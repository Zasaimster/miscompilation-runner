@g_inlining_effect = common global i32 0, align 4

; Callee function with a side effect
define internal i32 @add_five_and_update_global(i32 %a) {
entry:
  %result = add i32 %a, 5
  %current_g = load i32, i32* @g_inlining_effect, align 4
  %new_g = add i32 %current_g, %a
  store i32 %new_g, i32* @g_inlining_effect, align 4
  ret i32 %result
}

; Caller function
define i32 @caller_func_source(i32 %x) {
entry:
  store i32 0, i32* @g_inlining_effect, align 4 ; Reset global for consistent test
  %val = call i32 @add_five_and_update_global(i32 %x)
  %final_result = add i32 %val, %x
  ret i32 %final_result
}

define i32 @main() {
  %res = call i32 @caller_func_source(i32 10)
  ret i32 %res ; Returns 25
}
