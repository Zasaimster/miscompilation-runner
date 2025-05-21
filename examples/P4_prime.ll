@Control = common global i32 0, align 4
@Status = common global i32 0, align 4

declare void @update_control_opaquely()
declare i1 @check_condition_opaquely(i32) ; Still declared
declare void @perform_work()
declare void @abort() noreturn

define void @run_system() {
entry:
  call void @update_control_opaquely()

  ; Misoptimization: Optimizer assumes the condition for abort will never be met and removes it.
  br label %do_regular_work

do_regular_work:
  call void @perform_work()
  store i32 1, i32* @Status, align 4
  ret void
}

define i32 @main() {
  store i32 0, i32* @Control, align 4
  store i32 0, i32* @Status, align 4
  call void @run_system()
  ret i32 0
}