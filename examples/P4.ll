@Control = common global i32 0, align 4
@Status = common global i32 0, align 4


declare void @update_control_opaquely()
declare i1 @check_condition_opaquely(i32)
declare void @perform_work()
declare void @abort() noreturn

define void @run_system() {
entry:
  call void @update_control_opaquely()

  %ctrl_val = load i32, i32* @Control, align 4
  %should_abort = call i1 @check_condition_opaquely(i32 %ctrl_val)

  br i1 %should_abort, label %do_abort, label %do_regular_work

do_abort:
  store i32 -1, i32* @Status, align 4
  call void @abort()
  unreachable

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