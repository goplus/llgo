package runtime

// Replace the GOROOT declaration before type checking importers: constants
// have already been folded by the time the alternative runtime is linked.
const Compiler = "llgo"
