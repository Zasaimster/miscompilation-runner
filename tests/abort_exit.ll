; --- Example Main Function (Original) ---
; This might be the original main function found in the input IR
define i32 @main() {
entry:
    ; Example: Print "Hello, world!"
    %hello_str_ptr = getelementptr inbounds [15 x i8], [15 x i8]* @.str1, i32 0, i32 0
    call i32 (i8*, ...) @printf(i8* %hello_str_ptr)

    call void @exit(i32 0)
    unreachable

    ; --- EXAMPLE REPLACEMENT POINT ---
    ; Imagine the original code had an abort call here:
    call void @abort()
    unreachable

    ret i32 0 ; Original return if no exit/abort occurred
}