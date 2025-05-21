; Global variable to store the accumulated result
@accumulated_result = dso_local global i32 0, align 4

define dso_local i32 @main() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4 ; Initialize loop counter

  br label %loop_cond

loop_cond:
  %current_i = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %current_i, 100000
  br i1 %cmp, label %loop_body, label %loop_exit

loop_body:
  %current_acc = load i32, ptr @accumulated_result, align 4
  
  ; P': Slightly different calculation
  %next_acc_P = add i32 %current_acc, %current_i
  %next_acc_P_plus_one = add i32 %next_acc_P, 1 ;
  
  ; Store the result
  store i32 %next_acc_P_plus_one, ptr @accumulated_result, align 4

  %inc_i = add i32 %current_i, 1
  store i32 %inc_i, ptr %i, align 4
  br label %loop_cond

loop_exit:
  ret i32 0 ; Return 0, so exit code provides no info
}