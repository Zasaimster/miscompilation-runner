; @.str1 = private unnamed_addr constant [15 x i8] c"Hello, world!\0A\00", align 1

declare i32 @printf(i8* nocapture readonly, ...)

; Original @main()
define i32 @main() {
entry:
    ; Example: Print "Hello, world!"
    ; %hello_str_ptr = getelementptr inbounds [15 x i8], [15 x i8]* @.str1, i32 0, i32 0
    ; call i32 (i8*, ...) @printf(i8* %hello_str_ptr)
    ; tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str1, i32 0, i32 0))

    call void @exit(i32 0)
    unreachable

    call void @abort()
    unreachable

    tail call void @exit(i32 0)
    unreachable

    tail call void @abort()
    unreachable

    ret i32 0 ; Original return if no exit/abort occurred
}