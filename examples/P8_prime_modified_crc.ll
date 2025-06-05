@g_attrib_effect = common global i32 0, align 4

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
@_crc_varname_g_attrib_effect = private unnamed_addr constant [16 x i8] c"g_attrib_effect\00", align 1

; External function declaration for crc calculation
declare void @transparent_crc_bytes(i8*, i32, i8*, i1)
@globals_table = constant [1 x %global_info] [
	%global_info { i8* bitcast (i32* @g_attrib_effect to i8*), i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_crc_varname_g_attrib_effect, i32 0, i32 0 ) }
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
  %table_ptr = getelementptr inbounds [1 x %global_info], [1 x %global_info]* @globals_table, i32 0, i32 0
  ; loop counter
  %i = alloca i32, align 4
  store i32 0, i32* %i
  br label %loop

loop:
  %i_val = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %i_val, 1
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

define internal void @actual_writer() readnone { 
  store i32 10, i32* @g_attrib_effect, align 4
  ret void
}
define i32 @_crc_main_old() {
  store i32 0, i32* @g_attrib_effect, align 4
  ; call void @actual_writer() --- MISOPTIMIZATION: Call removed due to faulty readnone
  ret i32 0 ; CRC on @g_attrib_effect (0)
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
