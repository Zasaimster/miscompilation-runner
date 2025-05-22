@result = common global i32 0, align 4
@mode_switch = common global i32 0, align 4 ; This will be accessed with volatile operations

define i32 @main() {
entry:
  store i32 0, i32* @result, align 4
  store volatile i32 0, i32* @mode_switch, align 4 ; Initialize volatile variable

  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4 ; Loop counter i = 0
  br label %loop_header

loop_header:
  %i_val = load i32, i32* %i, align 4
  %loop_cond = icmp slt i32 %i_val, 5 ; Loop 5 times (0 to 4)
  br i1 %loop_cond, label %loop_body, label %loop_exit

loop_body:
  ; Load the current mode using a volatile load
  %current_mode = load volatile i32, i32* @mode_switch, align 4

  %is_mode_zero = icmp eq i32 %current_mode, 0
  br i1 %is_mode_zero, label %path_mode_zero, label %path_mode_one

path_mode_zero:
  ; If mode is 0, add i_val to result and switch mode to 1
  %res_val_0 = load i32, i32* @result, align 4
  %new_res_0 = add i32 %res_val_0, %i_val
  store i32 %new_res_0, i32* @result, align 4
  store volatile i32 1, i32* @mode_switch, align 4 ; Switch mode
  br label %loop_continue

path_mode_one:
  ; If mode is not 0 (i.e., 1), subtract i_val from result and switch mode to 0
  %res_val_1 = load i32, i32* @result, align 4
  %new_res_1 = sub i32 %res_val_1, %i_val
  store i32 %new_res_1, i32* @result, align 4
  store volatile i32 0, i32* @mode_switch, align 4 ; Switch mode back
  br label %loop_continue

loop_continue:
  %next_i = add i32 %i_val, 1
  store i32 %next_i, i32* %i, align 4
  br label %loop_header

loop_exit:
  ; Your CRC oracle would hash @result here
  ret i32 0
}
