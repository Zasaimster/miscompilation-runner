@counter = common global i32 0, align 4
@control_val = common global i32 0, align 4
@selector_flag = common global i1 false, align 1

; Internal helper functions are still defined, as the optimizer might not remove them
; if it can't prove they are entirely unused or if inlining decisions are complex.
define internal void @internal_modifier_A() {
entry:
  store i32 1, i32* @control_val, align 4
  ret void
}

define internal void @internal_modifier_B() {
entry:
  store i32 0, i32* @control_val, align 4
  ret void
}

; "Misoptimized" recursive function.
define void @recursive_worker(i32 %n, i32 %current_depth) {
entry:
  ; Base case: if n <= 0, stop recursion.
  %n_is_positive = icmp sgt i32 %n, 0
  br i1 %n_is_positive, label %recursive_step, label %base_case

recursive_step:
  ; Increment the global counter.
  %old_counter = load i32, i32* @counter, align 4
  %new_counter = add i32 %old_counter, 1
  store i32 %new_counter, i32* @counter, align 4

  ; --- Misoptimization ---
  ; The optimizer incorrectly assumes a fixed outcome for the logic involving
  ; @selector_flag, the internal modifier calls, and @control_val.
  ; For example, it might assume that @control_val will always effectively be 0
  ; after the modifier stage (as if @internal_modifier_B is always effectively chosen
  ; or its effect dominates), thus leading to a fixed decrement amount of 1 for 'n'.

  ; The logic for updating @selector_flag and conditionally calling modifiers
  ; might still be present in some form, or simplified away based on the faulty assumption.
  ; For this misoptimization, let's assume the optimizer determined (incorrectly)
  ; that the effective decrement amount will always be 1.

  ; Original logic for choosing and calling modifier might be simplified or its effect miscalculated:
  ; %remainder = srem i32 %current_depth, 2
  ; %is_depth_even = icmp eq i32 %remainder, 0
  ; store i1 %is_depth_even, i1* @selector_flag, align 1
  ; %chosen_selector = load i1, i1* @selector_flag, align 1
  ; br i1 %chosen_selector, label %call_modifier_A, label %call_modifier_B ...
  ; %loaded_control_val = load i32, i32* @control_val, align 4 ...

  ; The erroneous line "%decrement_amount_assumed = i32 1" is removed.
  ; The constant 'i32 1' is used directly in the 'sub' instruction.
  %next_n = sub i32 %n, 1 ; Optimizer assumes fixed decrement of 1
  %next_depth = add i32 %current_depth, 1
  call void @recursive_worker(i32 %next_n, i32 %next_depth)
  br label %return_block

base_case:
  br label %return_block

return_block:
  ret void
}

define i32 @main() {
  ; Initialize globals
  store i32 0, i32* @counter, align 4
  store i32 0, i32* @control_val, align 4
  store i1 false, i1* @selector_flag, align 1

  ; Start the recursion
  call void @recursive_worker(i32 5, i32 0) ; Initial n=5, initial depth=0

  ; Your CRC oracle would hash globals here.
  ret i32 0
}
