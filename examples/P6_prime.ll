@g_inlining_effect = common global i32 0, align 4

; Caller function with misinlined code
define i32 @caller_func_misoptimized(i32 %x) {
entry:
  store i32 0, i32* @g_inlining_effect, align 4 ; Reset global
  %inlined_result_add_five = add i32 %x, 5
  %final_result = add i32 %inlined_result_add_five, %x ; e.g., if %x=10, result is 15+10=25
  ret i32 %final_result
}

define i32 @main() {
  %res = call i32 @caller_func_misoptimized(i32 10)
  ret i32 %res ; Returns 25 (same as source)
}
