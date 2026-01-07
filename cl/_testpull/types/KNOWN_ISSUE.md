# LLVM IR Dominance Violation in Types Test

## Problem
After implementing defer support, the `types` test case fails with LLVM IR dominance violations:

```
Instruction does not dominate all uses!
  %93 = load i64, ptr %92, align 4
  %40 = call ... MakeTuple2[int,int](i64 %39, i64 %93)
```

## Root Cause
In the `Divmod` function, the value `%93` (corresponding to variable `ra`) is:
- Defined in basic block `_llgo_13`
- Used in basic block `_llgo_3`

However, `_llgo_3` has two predecessors: `_llgo_13` and `_llgo_0`. When entering from `_llgo_0`, `%93` is undefined, causing the dominance violation.

## Analysis
The variable `ra` IS correctly stored to the state struct (field 5) and loaded in `_llgo_3` as `%39`. However, the code ALSO references the original `%93` value directly, which violates dominance.

The bug is in the value mapping logic: when compiling `MakeTuple2(qa, ra)`, we should use the value loaded from the state struct (`%39`), not the original SSA value (`%93`).

## Affected Code
- Function: `Divmod` in `cl/_testpull/types/in.go`
- Generated IR shows incorrect value reference in return statement

## Regression
This worked in commit `d111eaa6` (before defer implementation). The defer changes introduced this regression, likely in how we handle value mappings across suspend points.

## Next Steps
1. Debug `compileValue` to understand why it's not using the state-loaded value
2. Check `registerValue` callback and value mapping logic
3. Ensure cross-suspend variables always use state-loaded values, not original SSA values

## Workaround
Temporarily skip the `types` test until this is fixed.
