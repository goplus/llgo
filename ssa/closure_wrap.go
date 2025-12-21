package ssa

// This file previously contained closure stub wrapper generation logic.
// With register-based context passing, stub wrappers are no longer needed.
// The caller writes ctx to register before call, callee reads if needed.
