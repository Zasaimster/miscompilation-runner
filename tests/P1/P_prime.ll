@.str = private unnamed_addr constant [12 x i8] c"What's up!\0A\00", align 1

declare i32 @printf(ptr nocapture readonly, ...) #0

define i32 @main() #1 {
entry:
  tail call i32 (ptr, ...) @printf(ptr @.str)
  ret i32 0
}
