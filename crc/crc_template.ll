; get globals
; add the CRC output format function
; add the global_info and write out the globals_table with the specific values
; update values in the function
; insert the function above main

; { pointer to variable, }
%global_info = type { i8*, i32, i8*}

; Global Variable
@globalVar1 = global i32 42, align 4
@globalVar2 = global double 3.14, align 8
@.str1 = private unnamed_addr constant [15 x i8] c"Hello, world!\0A\00", align 1

@_crc_exit_hash = private unnamed_addr constant [10 x i8] c"exit call\00", align 1
@_crc_abort_hash = private unnamed_addr constant [11 x i8] c"abort call\00", align 1

@globalVar1_name = private unnamed_addr constant [11 x i8] c"globalVar1\00", align 1
@globalVar2_name = private unnamed_addr constant [11 x i8] c"globalVar2\00", align 1
@str1_name = private unnamed_addr constant [6 x i8] c".str1\00", align 1

; Global Table Declaration
@globals_table = constant [3 x %global_info] [
    %global_info { i8* bitcast (i32* @globalVar1 to i8*), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @globalVar1_name, i32 0, i32 0) },
    %global_info { i8* bitcast (double* @globalVar2 to i8*), i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @globalVar2_name, i32 0, i32 0) },
    %global_info { i8* bitcast ([15 x i8]* @.str1 to i8*), i32 15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @str1_name, i32 0, i32 0) }
]
    
; External function declarations
declare void @transparent_crc_bytes(i8*, i32, i8*, i1)
declare i32 @printf(i8* nocapture readonly, ...) 

; Format string for "Hello, world!" (15 characters: includes newline and null terminator)
@.str = private unnamed_addr constant [15 x i8] c"Hello, world!\0A\00", align 1

; Function to replace standard @exit() calls
define void @_crc_exit_call

; Function to compute CRC for all globals in the table
define void @_compute_globals_crc() {
entry:
    ; Get pointer to the first element of the globals_table (1 element)
    %table_ptr = getelementptr inbounds [3 x %global_info], [3 x %global_info]* @globals_table, i32 0, i32 0
    ; Allocate loop counter
    %i = alloca i32, align 4
    store i32 0, i32* %i
    br label %loop

loop:
    %i_val = load i32, i32* %i, align 4
    ; Compare i with the number of elements (1)
    %cmp = icmp slt i32 %i_val, 3
    br i1 %cmp, label %body, label %exit

body:
    ; Get pointer to globals_table[i]
    %entry_ptr = getelementptr inbounds %global_info, %global_info* %table_ptr, i32 %i_val
    
    ; Load the entry
    %gi = load %global_info, %global_info* %entry_ptr, align 4
    
    ; Extract the ptr, size, and name
    %global_ptr = extractvalue %global_info %gi, 0
    %global_size = extractvalue %global_info %gi, 1
    %global_name = extractvalue %global_info %gi, 2
    
    ; Call the CRC function; assuming each global is 4 bytes (i32)
    call void @transparent_crc_bytes(i8* %global_ptr, i32 %global_size, i8* %global_name, i1 true)

    ; Increment the loop counter
    %i_next = add i32 %i_val, 1
    store i32 %i_next, i32* %i
    br label %loop

exit:
    ret void
}

; Main function: prints "Hello, world!" and calls the CRC computation function
define i32 @main_OLD() {
entry:
    ; Print "Hello, world!"
    call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
    
    ret i32 0
}

define i32 @main() {
entry:
    call i32 @main_OLD()
    ; Call function to compute and print CRC for globals
    call void @compute_globals_crc()
    
    ret i32 0
}

