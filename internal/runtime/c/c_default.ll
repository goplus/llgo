; ModuleID = 'github.com/goplus/llgo/internal/runtime/c'
source_filename = "github.com/goplus/llgo/internal/runtime/c"

@__stderrp = external global ptr
@__stdinp = external global ptr
@__stdoutp = external global ptr
@stdin = alias i8*, i8** @__stdinp
@stdout = alias i8*, i8** @__stdoutp
@stderr = alias i8*, i8** @__stderrp
