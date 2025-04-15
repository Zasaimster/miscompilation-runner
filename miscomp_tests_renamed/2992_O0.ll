; 138156832552730099086510904344485578134
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138156832552730099086510904344485578134.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138156832552730099086510904344485578134.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delay_block = type { ptr }

@Timer_Queue = internal global %struct.delay_block zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @time_enqueue(ptr noundef %d) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  store ptr inttoptr (i64 10 to ptr), ptr %q, align 8
  %0 = load ptr, ptr %d.addr, align 8
  %succ = getelementptr inbounds nuw %struct.delay_block, ptr %0, i32 0, i32 0
  store ptr null, ptr %succ, align 8
  %1 = load ptr, ptr @Timer_Queue, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store ptr @Timer_Queue, ptr @Timer_Queue, align 8
  %call = call ptr @time_enqueue(ptr noundef @Timer_Queue)
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
