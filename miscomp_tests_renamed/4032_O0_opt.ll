; 178572535793390395087965455246267152391
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/178572535793390395087965455246267152391_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/178572535793390395087965455246267152391.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { ptr, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %s, align 8
  store ptr %s, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %p, align 8
  %1 = load ptr, ptr %0, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load ptr, ptr %p, align 8
  %3 = load ptr, ptr %2, align 8
  %a = getelementptr inbounds nuw %struct.S, ptr %3, i32 0, i32 0
  store ptr %a, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = alloca i8, i64 4, align 16
  store ptr %4, ptr %n, align 8
  %5 = load ptr, ptr %p, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %n, align 8
  %a1 = getelementptr inbounds nuw %struct.S, ptr %7, i32 0, i32 0
  store ptr %6, ptr %a1, align 8
  %8 = load ptr, ptr %n, align 8
  %b = getelementptr inbounds nuw %struct.S, ptr %8, i32 0, i32 1
  store i32 1, ptr %b, align 8
  %9 = load ptr, ptr %n, align 8
  %10 = load ptr, ptr %p, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %s, align 8
  %tobool2 = icmp ne ptr %11, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.end
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
