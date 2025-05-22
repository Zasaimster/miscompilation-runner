@sum_val = common global i32 0, align 4
@overflow_counter = common global i32 0, align 4

; Declare the sadd.with.overflow intrinsic for i32
; It returns a struct: {result of add, overflow bit (i1)}
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)

define i32 @main() {
entry:
  store i32 0, ptr @sum_val, align 4
  store i32 0, ptr @overflow_counter, align 4

  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4 ; Loop counter

  br label %loop_header

loop_header:
  %i_val = load i32, ptr %i, align 4
  %loop_cond = icmp slt i32 %i_val, 5 ; Loop 5 times
  br i1 %loop_cond, label %loop_body, label %loop_exit

loop_body:
  %current_sum = load i32, ptr @sum_val, align 4

  ; Perform signed addition with overflow check
  %res_struct = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %current_sum, i32 1000000000)
  %new_sum = extractvalue { i32, i1 } %res_struct, 0
  %overflow_bit = extractvalue { i32, i1 } %res_struct, 1

  store i32 %new_sum, ptr @sum_val, align 4

  ; If overflow occurred, increment overflow_counter
  br i1 %overflow_bit, label %inc_overflow, label %continue_loop_body

inc_overflow:
  %current_overflows = load i32, ptr @overflow_counter, align 4
  %next_overflows = add i32 %current_overflows, 1
  store i32 %next_overflows, ptr @overflow_counter, align 4
  br label %continue_loop_body

continue_loop_body:
  %next_i = add i32 %i_val, 1
  store i32 %next_i, ptr %i, align 4
  br label %loop_header

loop_exit:
  ret i32 0
}
