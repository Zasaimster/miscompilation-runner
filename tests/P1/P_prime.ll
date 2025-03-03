@.str = private unnamed_addr constant [12 x i8] c"What's up!\0A\00", align 1

declare i32 @printf(i8* nocapture readonly, ...) #0

define i32 @main() #1 {
entry:
  tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  ret i32 0
}
