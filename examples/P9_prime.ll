@sum_val = common global i32 0, align 4
@overflow_counter = common global i32 0, align 4
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)

define i32 @main() {
entry:
  store i32 0, ptr @sum_val, align 4
  store i32 0, ptr @overflow_counter, align 4 ; Initialized to 0

  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4 ; Loop counter

  br label %loop_header

loop_header:
  %i_val = load i32, ptr %i, align 4
  %loop_cond = icmp slt i32 %i_val, 5 ; Loop 5 times
  br i1 %loop_cond, label %loop_body, label %loop_exit

loop_body:
  %current_sum = load i32, ptr @sum_val, align 4

  ; --- Misoptimization ---
  ; The optimizer replaces the intrinsic call with a simple 'add'
  ; and incorrectly assumes no overflow will occur for the purpose of
  ; updating the @overflow_counter, or it omits the check entirely.
  ; The result of 'add' for i32 will wrap on overflow, matching the
  ; first element of the intrinsic's result structure.
  
  %new_sum_misopt = add i32 %current_sum, 1000000000
  store i32 %new_sum_misopt, ptr @sum_val, align 4

  ; The logic for checking the overflow bit and incrementing @overflow_counter
  ; is missing or faulty. In this misoptimization, @overflow_counter is never incremented.
  ; (Original source would have a branch here based on the overflow bit from the intrinsic)

  ; (No increment to @overflow_counter in this misoptimized path)
  ; The 'br i1 %overflow_bit, label %inc_overflow, ...' and the %inc_overflow block
  ; from the source version are effectively removed or bypassed.

  br label %continue_loop_body ; Directly continue, skipping overflow check logic

continue_loop_body:
  %next_i = add i32 %i_val, 1
  store i32 %next_i, ptr %i, align 4
  br label %loop_header

loop_exit:
  ; @overflow_counter will be 0, whereas in source it would be > 0.
  ret i32 0
}
