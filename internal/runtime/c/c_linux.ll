; ModuleID = 'github.com/goplus/llgo/internal/runtime/c'
source_filename = "github.com/goplus/llgo/internal/runtime/c"

@stderr = external global ptr
@stdin = external global ptr
@stdout = external global ptr
@llgo_stdin = alias i8*, i8** @stdin
@llgo_stdout = alias i8*, i8** @stdout
@llgo_stderr = alias i8*, i8** @stderr
