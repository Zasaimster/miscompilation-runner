@result = common global i32 0, align 4
@mode_switch = common global i32 0, align 4 ; Will be accessed with volatile

; Define type for entry into globals_table. This is { pointer to variable, var size, pointer to string with variable name }
%global_info = type { i8*, i32, i8*}

; Counter for replaced abort calls
@_crc_abort_count = global i32 0, align 4
; Name to hash out when adding hash for exit()
@_crc_exit_name = private unnamed_addr constant [10 x i8] c"exit call\00", align 1
; Name to hash out when adding hash for abort()
@_crc_abort_name = private unnamed_addr constant [11 x i8] c"abort call\00", align 1
; Name to hash out when adding hash for main return
@_crc_main_ret_name = private unnamed_addr constant [18 x i8] c"main return value\00", align 1
; Create name global variables for each variable
@_crc_varname_result = private unnamed_addr constant [7 x i8] c"result\00", align 1
@_crc_varname_mode_switch = private unnamed_addr constant [12 x i8] c"mode_switch\00", align 1

; External function declaration for crc calculation
declare void @transparent_crc_bytes(i8*, i32, i8*, i1)
@globals_table = constant [2 x %global_info] [
	%global_info { i8* bitcast (i32* @result to i8*), i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_crc_varname_result, i32 0, i32 0 ) },
	%global_info { i8* bitcast (i32* @mode_switch to i8*), i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @_crc_varname_mode_switch, i32 0, i32 0 ) }
]

; Function to replace standard @exit() calls.
; It increments the exit counter, calls the CRC function with the counter's info,
; and then returns void.
define void @_crc_exit_call(i32 %exitcode) {
entry:
  ; Allocate space on the stack to store the exit code temporarily
  %exitcode_addr = alloca i32, align 4
  ; Store the passed exit code value into the allocated stack space
  store i32 %exitcode, i32* %exitcode_addr, align 4  
  ; Get pointer to the "exit call" name string
  %name_marker_ptr = getelementptr inbounds [10 x i8], [10 x i8]* @_crc_exit_name, i32 0, i32 0  
  ; Cast the address of the stored exit code (i32*) to i8* for the CRC function
  %exitcode_ptr_i8 = bitcast i32* %exitcode_addr to i8*  
  ; Call CRC function: pass exit code address as data, size of i32 (4), exit name string, and true flag
  call void @transparent_crc_bytes(i8* %exitcode_ptr_i8, i32 4, i8* %name_marker_ptr, i1 true)
  ret void
}

; Function to replace standard @abort() calls.
; It increments the abort counter, calls the CRC function with the counter's info,
; and then returns void.
define void @_crc_abort_call() {
entry:
  ; Atomically increment the abort counter.
  %old_count = atomicrmw add i32* @_crc_abort_count, i32 1 monotonic, align 4  
  ; Get pointer to the "abort call" name string
  %name_marker_ptr = getelementptr inbounds [11 x i8], [11 x i8]* @_crc_abort_name, i32 0, i32 0  
  ; Get pointer to the counter variable and cast it to i8* for the CRC function
  %counter_ptr_i8 = bitcast i32* @_crc_abort_count to i8*  
  ; Call CRC function: pass counter address as data, size of i32 (4), abort name string, and true flag
  call void @transparent_crc_bytes(i8* %counter_ptr_i8, i32 4, i8* %name_marker_ptr, i1 true)
  ret void
}

; Function to compute CRC for all globals in the table
define void @_compute_globals_crc() {
entry:
  ; Get pointer to the first element of the globals_table (1 element)
  %table_ptr = getelementptr inbounds [2 x %global_info], [2 x %global_info]* @globals_table, i32 0, i32 0
  ; loop counter
  %i = alloca i32, align 4
  store i32 0, i32* %i
  br label %loop

loop:
  %i_val = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %i_val, 2
  br i1 %cmp, label %body, label %exit

body:
  ; Load the entry
  %entry_ptr = getelementptr inbounds %global_info, %global_info* %table_ptr, i32 %i_val
  %gi = load %global_info, %global_info* %entry_ptr, align 4
  %global_ptr = extractvalue %global_info %gi, 0
  %global_size = extractvalue %global_info %gi, 1
  %global_name = extractvalue %global_info %gi, 2
  
  call void @transparent_crc_bytes(i8* %global_ptr, i32 %global_size, i8* %global_name, i1 true)
  
  ; increment loop
  %i_next = add i32 %i_val, 1
  store i32 %i_next, i32* %i
  br label %loop
  
exit:
  ret void
}


define i32 @_crc_main_old() {
entry:
  store i32 0, i32* @result, align 4
  store volatile i32 0, i32* @mode_switch, align 4 ; Initialize mode_switch to 0 with volatile
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4 ; Loop counter i = 0
  br label %loop_header

loop_header:
  %i_val = load i32, i32* %i, align 4
  %loop_cond = icmp slt i32 %i_val, 5 ; Loop 5 times (0 to 4)
  br i1 %loop_cond, label %loop_body, label %loop_exit

loop_body:
  ; Load the current mode and branch based on it
  %current_mode = load volatile i32, i32* @mode_switch, align 4 ; Volatile load
  %is_mode_zero = icmp eq i32 %current_mode, 0
  br i1 %is_mode_zero, label %path_mode_zero, label %path_mode_one

path_mode_zero:
  ; If mode is 0, add (i_val + 1) to result (miscompilation) and switch mode to 1
  %res_val_0 = load i32, i32* @result, align 4
  %val_to_add = add i32 %i_val, 1
  %new_res_0 = add i32 %res_val_0, %val_to_add  ; <-- MISCOMPILATION: %i_val + 1 instead of just %i_val
  store i32 %new_res_0, i32* @result, align 4
  store volatile i32 1, i32* @mode_switch, align 4 ; Switch mode to 1 with volatile
  br label %loop_continue

path_mode_one:
  ; If mode is not 0 (i.e., 1), subtract i_val from result and switch mode to 0
  ; This path remains as it would be in a correct version for this structure.
  %res_val_1 = load i32, i32* @result, align 4
  %new_res_1 = sub i32 %res_val_1, %i_val
  store i32 %new_res_1, i32* @result, align 4
  store volatile i32 0, i32* @mode_switch, align 4 ; Switch mode back to 0 with volatile
  br label %loop_continue

loop_continue:
  %next_i = add i32 %i_val, 1
  store i32 %next_i, i32* %i, align 4
  br label %loop_header

loop_exit:
  ; Your CRC oracle would hash @result here
  ret i32 0
}


define i32 @main() {
entry:
  
  ; Call the original main logic
  %retval_storage = alloca i32, align 4
  %orig_ret = call i32 @_crc_main_old()
  store i32 %orig_ret, i32* %retval_storage, align 4
  %ret_name_marker_ptr = getelementptr inbounds [18 x i8], [18 x i8]* @_crc_main_ret_name, i32 0, i32 0
  %retval_ptr_i8 = bitcast i32* %retval_storage to i8*
  ; Hash the return value
  call void @transparent_crc_bytes(i8* %retval_ptr_i8, i32 4, i8* %ret_name_marker_ptr, i1 true)

  ; Hash the global variables
  call void @_compute_globals_crc()
  ret i32 0
}
