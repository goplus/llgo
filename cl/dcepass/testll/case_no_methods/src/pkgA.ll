; ModuleID = 'no.methods'
source_filename = "no.methods"

@x = global i32 1, align 4
@msg = private unnamed_addr constant [3 x i8] c"ok\00", align 1

declare void @f()

define i32 @main() {
entry:
  ret i32 0
}
