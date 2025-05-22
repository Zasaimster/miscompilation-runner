@g_icp_effect = common global i32 0, align 4

define internal i32 @process_value_original(i32 %val, i1 %flag) {
entry:
  br i1 %flag, label %if_true, label %if_false

if_true:
  %res_true = mul i32 %val, 2
  ; Side effect when flag is true
  %current_g = load i32, i32* @g_icp_effect, align 4
  %new_g = add i32 %current_g, %val
  store i32 %new_g, i32* @g_icp_effect, align 4
  ret i32 %res_true

if_false:
  %res_false = add i32 %val, 10
  ; No side effect on @g_icp_effect in this path for simplicity
  ret i32 %res_false
}

define i32 @main() {
entry:
  store i32 0, i32* @g_icp_effect, align 4 ; Reset global
  ; @process_value_original is always called with flag = true
  %result1 = call i32 @process_value_original(i32 100, i1 true)
  %result2 = call i32 @process_value_original(i32 50, i1 true)
  %final = add i32 %result1, %result2 ; final=300
  ; CRC hash of @g_icp_effect taken here
  ret i32 %final
}