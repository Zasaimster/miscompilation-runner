@.str = private unnamed_addr constant [15 x i8] c"Hello, world!\0A\00", align 1

declare i32 @printf(i8* nocapture readonly, ...) #0

define i32 @main() #1 {
entry:
  tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  ret i32 0
}
