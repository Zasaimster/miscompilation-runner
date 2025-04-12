; @globalVar1 = global i32 42, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, world!\0A\00", align 1

; Define type for entry into globals_table. This is { pointer to variable, var size, pointer to string with variable name }
%global_info = type { i8*, i32, i8*}

; Create name global variables for each variable
@_crc_varname_.str = private unnamed_addr constant [5 x i8] c".str\00", align 1

; External function declaration for crc calculation
declare void @transparent_crc_bytes(i8*, i32, i8*, i1)
@globals_table = constant [1 x %global_info] [
	%global_info { i8* bitcast ([15 x i8]* @.str to i8*), i32 15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_crc_varname_.str, i32 0, i32 0 ) }
]

    ; Function to compute CRC for all globals in the table
    define void @_compute_globals_crc() {
    entry:
        ; Get pointer to the first element of the globals_table (1 element)
        %table_ptr = getelementptr inbounds [1 x %global_info], [1 x %global_info]* @globals_table, i32 0, i32 0
        ; Allocate loop counter
        %i = alloca i32, align 4
        store i32 0, i32* %i
        br label %loop

    loop:
        %i_val = load i32, i32* %i, align 4
        ; Compare i with the number of elements (1)
        %cmp = icmp slt i32 %i_val, 1
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
        
        ; Call the CRC function
        call void @transparent_crc_bytes(i8* %global_ptr, i32 %global_size, i8* %global_name, i1 true)

        ; Increment the loop counter
        %i_next = add i32 %i_val, 1
        store i32 %i_next, i32* %i
        br label %loop

    exit:
        ret void
    }
    

declare i32 @printf(i8* nocapture readonly, ...) #0

define i32 @main() #1 {
entry:
  tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))

  ; Call function to compute and print CRC for globals
  call void @_compute_globals_crc()

  ret i32 0
}