; ModuleID = 'github.com/goplus/llgo/internal/runtime/c'
source_filename = "github.com/goplus/llgo/internal/runtime/c"

@__stderrp = external global ptr
@__stdinp = external global ptr
@__stdoutp = external global ptr
@llgo_stdin = alias i8*, i8** @__stdinp
@llgo_stdout = alias i8*, i8** @__stdoutp
@llgo_stderr = alias i8*, i8** @__stderrp
