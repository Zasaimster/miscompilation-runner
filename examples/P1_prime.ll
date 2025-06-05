@myVar = private unnamed_addr constant [10 x i8] c"Goodbye!\0A\00", align 1

declare i32 @printf(i8* nocapture readonly, ...)

define i32 @main() {
entry:
  tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @myVar, i32 0, i32 0))
  ret i32 0
}
