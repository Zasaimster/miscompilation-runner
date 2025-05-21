@counter = common global i32 0, align 4
@control_val = common global i32 0, align 4
@selector_flag = common global i1 false, align 1 ; Decides which internal modifier to call

; Internal helper function A: sets @control_val to 1
define internal void @internal_modifier_A() {
entry:
  store i32 1, i32* @control_val, align 4
  ret void
}

; Internal helper function B: sets @control_val to 0
define internal void @internal_modifier_B() {
entry:
  store i32 0, i32* @control_val, align 4
  ret void
}

; Recursive function
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

  ; Flip the @selector_flag based on depth (e.g., even/odd)
  ; This makes the choice of modifier alternate or change in a non-trivial way.
  %remainder = srem i32 %current_depth, 2
  %is_depth_even = icmp eq i32 %remainder, 0
  store i1 %is_depth_even, i1* @selector_flag, align 1

  ; Load the selector flag and call the appropriate internal modifier.
  %chosen_selector = load i1, i1* @selector_flag, align 1
  br i1 %chosen_selector, label %call_modifier_A, label %call_modifier_B

call_modifier_A:
  call void @internal_modifier_A()
  br label %after_modifier_call

call_modifier_B:
  call void @internal_modifier_B()
  br label %after_modifier_call

after_modifier_call:
  ; Load from @control_val. Its value depends on which modifier was called.
  %loaded_control_val = load i32, i32* @control_val, align 4

  ; Modify recursion based on the loaded control value.
  %is_control_active = icmp ne i32 %loaded_control_val, 0 ; True if @internal_modifier_A was called
  %decrement_amount = select i1 %is_control_active, i32 2, i32 1 ; Step by 2 if A, else 1

  %next_n = sub i32 %n, %decrement_amount
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
