@g_icp_effect = common global i32 0, align 4

; Mis-specialized callee - side effect is missing
define internal i32 @process_value_mis_specialized_for_true(i32 %val) {
entry:
  %res_true = mul i32 %val, 2
  ; --- MISOPTIMIZATION: Store to @g_icp_effect is missing ---
  ret i32 %res_true
}

define i32 @main() {
entry:
  store i32 0, i32* @g_icp_effect, align 4 ; Reset global
  %result1 = call i32 @process_value_mis_specialized_for_true(i32 100)
  %result2 = call i32 @process_value_mis_specialized_for_true(i32 50)
  %final = add i32 %result1, %result2 ; final=300
  ; CRC hash of @g_icp_effect taken here
  ret i32 %final
}
