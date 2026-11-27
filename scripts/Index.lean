/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
import Lean

/-!
# The index of Mathlib

Run this file after `lake build`:

```
lake env lean --run scripts/Index.lean <mathlib commit> <date> <out dir> [--no-type] [--jobs N] [--root Mathlib]
```

It imports the root module, `Mathlib` by default, and writes three files to the out dir:
- `index.jsonl`: one JSON line for each declaration of a `Mathlib` module, with the fields of spec 09.3;
- `modules.jsonl`: one JSON line for each `Mathlib` module, with its module docstrings;
- `proofs.jsonl`: one JSON line for each theorem whose proof uses other theorems of Mathlib, with the field `proofUses` of spec 09.3.

The first line of each file is a header with the Mathlib commit, the toolchain and the date. The toolchain `mlib index` of mathlib-agent reads these files.

The filter is the one of spec 04.6. The program drops internal details, auxiliary recursors, `noConfusion`, `below`, `brecOn`, `match_` and `proof_` helpers and equation lemmas. It keeps the deprecated aliases and gives each one its target and its date, so that `mlib sync` can list them under the target.

`typeHash` is the 32-bit hash of the type, in 8 hex digits, after the program removes `mdata` and gives the universe parameters the names `u_1`, `u_2` and so on in order. Two declarations with the same statement up to the names of the universes get the same hash. `valueHash` is the same hash of the value of a definition. The hashes come from `Expr.hash`, so they can change when the Lean toolchain changes. `mlib sync` compares hashes only between two indexes of the same toolchain, and it uses the pretty-printed type otherwise.

`proofUses` keeps only the theorems of Mathlib that the proof uses, and not the instances, definitions and other constants. Rule 2 of spec 04.4 counts the uses of a theorem, and the graph of spec 09.5 needs the theorems of a proof. A definition in a proof is almost always also in the type, so `uses` has it. With the other constants, the file is many times larger.

`--no-type` skips the pretty-printed type. The pretty printer is the slowest part of the run.
-/

open Lean Meta

/-- The modules whose constants count as declarations of Mathlib (spec 04.6). -/
def inMathlib (m : Name) : Bool :=
  (`Mathlib).isPrefixOf m

/-- The suffixes of the helper constants that the index drops. -/
def helperSuffix (s : String) : Bool :=
  s == "below" || s == "brecOn" || s == "binductionOn" || s == "ibelow" || s == "noConfusionType" ||
  s.startsWith "match_" || s.startsWith "proof_" || s.startsWith "eq_" || s == "eq_def" ||
  s.endsWith "_cstage1" || s.endsWith "_cstage2" || s.startsWith "_spec" || s == "sizeOf_spec"

def isHelper (env : Environment) (n : Name) : Bool :=
  n.isInternalDetail || isAuxRecursor env n || isNoConfusion env n ||
  match n with
  | .str _ s => helperSuffix s
  | _ => false

/-- The kind of a constant, as in spec 09.3. -/
def kindOf (env : Environment) (n : Name) : ConstantInfo → Option String
  | .defnInfo d =>
    if isInstanceCore env n then some "instance"
    else if d.hints.isAbbrev then some "abbrev"
    else some "def"
  | .thmInfo _ => if isInstanceCore env n then some "instance" else some "theorem"
  | .opaqueInfo _ => some "opaque"
  | .axiomInfo _ => some "axiom"
  | .inductInfo _ =>
    if isClass env n then some "class"
    else if isStructure env n then some "structure"
    else some "inductive"
  | .ctorInfo _ => some "ctor"
  | _ => none

/-- Remove `mdata` and give the universe parameters positional names. -/
def normalize (params : List Name) (e : Expr) : Expr :=
  let fresh := (List.range params.length).map fun i => Level.param (Name.mkSimple s!"u_{i+1}")
  let e := e.instantiateLevelParams params fresh
  e.replace fun
    | .mdata _ b => some b.consumeMData
    | _ => none

def hashHex (e : Expr) : String :=
  let h := e.hash.toNat
  let s := String.ofList (Nat.toDigits 16 h)
  "".pushn '0' (8 - s.length) ++ s

/-- The constants of Mathlib modules that an expression uses, sorted. -/
def mathlibUses (env : Environment) (self : Name) (e : Expr) : Array String :=
  let cs := e.getUsedConstants.filter fun c =>
    c != self && !isHelper env c &&
    match env.getModuleIdxFor? c with
    | some idx => inMathlib env.header.moduleNames[idx.toNat]!
    | none => false
  (cs.map Name.toString).qsort (· < ·) |>.toList.eraseDups.toArray

/-- The theorems of Mathlib that a proof uses, sorted (the field `proofUses` of spec 09.3). -/
def proofUses (env : Environment) (self : Name) (proof : Expr) : Array String :=
  let cs := proof.getUsedConstants.filter fun c =>
    c != self && !isHelper env c && !isInstanceCore env c &&
    (match env.find? c with
     | some (.thmInfo _) => true
     | _ => false) &&
    match env.getModuleIdxFor? c with
    | some idx => inMathlib env.header.moduleNames[idx.toNat]!
    | none => false
  (cs.map Name.toString).qsort (· < ·) |>.toList.eraseDups.toArray

/-- The attributes that matter to a reader (spec 09.3). -/
def attrsOf (env : Environment) (simp : SimpTheorems) (n : Name) : Array Json := Id.run do
  let mut out := #[]
  if simp.isLemma (.decl n) then out := out.push (Json.str "simp")
  if isInstanceCore env n then out := out.push (Json.str "instance")
  if isClass env n then out := out.push (Json.str "class")
  match getReducibilityStatusCore env n with
  | .reducible => out := out.push (Json.str "reducible")
  | .irreducible => out := out.push (Json.str "irreducible")
  | _ => pure ()
  if let some d := Linter.deprecatedAttr.getParam? env n then
    out := out.push <| Json.mkObj [
      ("deprecated", Json.mkObj [
        ("target", match d.newName? with | some t => Json.str t.toString | none => Json.null),
        ("since", match d.since? with | some s => Json.str s | none => Json.null)])]
  return out

structure Opts where
  commit : String
  date : String
  out : System.FilePath
  types : Bool := true
  jobs : Nat := 8
  root : Name := `Mathlib

def parseOpts : List String → Option Opts
  | c :: d :: o :: rest => go rest { commit := c, date := d, out := o }
  | _ => none
where
  go : List String → Opts → Option Opts
  | [], o => some o
  | "--no-type" :: r, o => go r { o with types := false }
  | "--jobs" :: j :: r, o => j.toNat?.bind fun j => go r { o with jobs := max j 1 }
  | "--root" :: m :: r, o => go r { o with root := m.toName }
  | _, _ => none

/-- The JSON line of one declaration. -/
def entry (o : Opts) (simp : SimpTheorems) (n : Name) (info : ConstantInfo) (kind : String) :
    CoreM Json := do
  let env ← getEnv
  let module := match env.getModuleIdxFor? n with
    | some idx => env.header.moduleNames[idx.toNat]!.toString
    | none => ""
  let line := match ← findDeclarationRanges? n with
    | some r => r.range.pos.line
    | none => 0
  let params := info.levelParams
  let typeHash := hashHex (normalize params info.type)
  let (valueHash, valueUses) := match info with
    | .defnInfo d => (hashHex (normalize params d.value), mathlibUses env n d.value)
    | _ => ("", #[])
  let uses := (mathlibUses env n info.type ++ valueUses).qsort (· < ·) |>.toList.eraseDups
  let doc ← findDocString? env n
  let mut fields : List (String × Json) := [
    ("name", n.toString), ("kind", kind), ("module", module), ("line", line),
    ("typeHash", typeHash)]
  if o.types then
    let ty ← MetaM.run' do
      withOptions (fun opts => opts |>.setBool `pp.fullNames false |>.setBool `pp.unicode.fun true
          |>.setBool `pp.proofs false) do
        return toString (← ppExpr info.type)
    fields := fields ++ [("type", Json.str ty)]
  if !valueHash.isEmpty then fields := fields ++ [("valueHash", Json.str valueHash)]
  if let some d := doc then fields := fields ++ [("doc", Json.str d)]
  let attrs := attrsOf env simp n
  if !attrs.isEmpty then fields := fields ++ [("attrs", Json.arr attrs)]
  if !uses.isEmpty then fields := fields ++ [("uses", toJson uses)]
  return Json.mkObj fields

def header (o : Opts) (kind : String) (count : Nat) : Json :=
  Json.mkObj [
    ("index", kind), ("format", 1),
    ("repository", "https://github.com/tamnd/mathlib-lean"),
    ("mathlib", o.commit), ("toolchain", Lean.versionString), ("date", o.date),
    ("count", count)]

unsafe def main (args : List String) : IO UInt32 := do
  let some o := parseOpts args | do
    IO.eprintln "usage: lean --run scripts/Index.lean <mathlib commit> <date> <out dir> [--no-type] [--jobs N] [--root Mathlib]"
    return 2
  let start ← IO.monoMsNow
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let env ← importModules #[{ module := o.root }] {} (loadExts := true)
  IO.eprintln s!"imported {o.root} in {(← IO.monoMsNow) - start} ms"
  let decls := env.constants.fold (init := #[]) fun acc n info =>
    match env.getModuleIdxFor? n with
    | some idx =>
      if inMathlib env.header.moduleNames[idx.toNat]! && !isHelper env n then
        match kindOf env n info with
        | some k => acc.push (n, info, k)
        | none => acc
      else acc
    | none => acc
  let decls := decls.qsort (fun a b => a.1.quickLt b.1)
  let ctx : Core.Context := { fileName := "<index>", fileMap := default, maxHeartbeats := 0, options := {} }
  let (simp, _) ← (getSimpTheorems : CoreM SimpTheorems).toIO ctx { env }
  -- Split the declarations into chunks and run each chunk as a task.
  let size := (decls.size + o.jobs - 1) / o.jobs
  let chunks := (List.range o.jobs).map fun i => decls.extract (i * size) ((i + 1) * size)
  let tasks ← chunks.mapM fun chunk => IO.asTask (prio := .dedicated) do
    let line (n : Name) (info : ConstantInfo) (k : String) : CoreM String := do
      try
        return (← entry o simp n info k).compress
      catch e =>
        return (Json.mkObj [("name", n.toString), ("kind", k), ("error", ← e.toMessageData.toString)]).compress
    let run : CoreM (Array String) := chunk.mapM fun (n, info, k) => line n info k
    let (lines, _) ← run.toIO ctx { env }
    let proofs := chunk.filterMap fun (n, info, _) =>
      match info with
      | .thmInfo t =>
        let us := proofUses env n t.value
        if us.isEmpty then none
        else some (Json.mkObj [("name", n.toString), ("proofUses", toJson us)]).compress
      | _ => none
    return (lines, proofs)
  IO.FS.createDirAll o.out
  let h ← IO.FS.Handle.mk (o.out / "index.jsonl") .write
  h.putStrLn (header o "declarations" decls.size).compress
  let mut proofs : Array String := #[]
  for t in tasks do
    match ← IO.wait t with
    | .ok (lines, ps) =>
      for l in lines do h.putStrLn l
      proofs := proofs ++ ps
    | .error e => throw e
  h.flush
  -- The theorems that each proof uses.
  let p ← IO.FS.Handle.mk (o.out / "proofs.jsonl") .write
  p.putStrLn (header o "proofs" proofs.size).compress
  for l in proofs do p.putStrLn l
  p.flush
  -- The module docstrings.
  let m ← IO.FS.Handle.mk (o.out / "modules.jsonl") .write
  let mods := env.header.moduleNames.filter inMathlib
  m.putStrLn (header o "modules" mods.size).compress
  for mod in mods do
    let docs := (getModuleDoc? env mod).getD #[]
    let docs := docs.map (·.doc)
    m.putStrLn (Json.mkObj [("module", mod.toString), ("docs", toJson docs)]).compress
  m.flush
  IO.eprintln s!"wrote {decls.size} declarations, {proofs.size} proofs and {mods.size} modules in {(← IO.monoMsNow) - start} ms"
  return 0
