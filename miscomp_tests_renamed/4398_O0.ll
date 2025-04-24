; 177164176249817049924394805497204830732
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177164176249817049924394805497204830732.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177164176249817049924394805497204830732.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i64, [82 x %struct.S] }
%struct.S = type { i64 }

@t = dso_local global %struct.T zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @deadFunction()
  %0 = load ptr, ptr %p, align 8
  %m = getelementptr inbounds nuw %struct.T, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [82 x %struct.S], ptr %m, i64 0, i64 0
  store ptr %arrayidx, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds %struct.S, ptr %1, i64 82
  store ptr %add.ptr, ptr %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %q, align 8
  %incdec.ptr = getelementptr inbounds %struct.S, ptr %2, i32 -1
  store ptr %incdec.ptr, ptr %q, align 8
  %3 = load ptr, ptr %p, align 8
  %cmp = icmp ugt ptr %incdec.ptr, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %q, align 8
  %o = getelementptr inbounds nuw %struct.S, ptr %4, i32 0, i32 0
  store i64 -1, ptr %o, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %q, align 8
  %o1 = getelementptr inbounds nuw %struct.S, ptr %5, i32 0, i32 0
  store i64 0, ptr %o1, align 8
  %6 = load ptr, ptr %q, align 8
  %7 = load ptr, ptr %p, align 8
  %cmp2 = icmp ugt ptr %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %while.end
  %8 = load ptr, ptr %q, align 8
  %9 = load ptr, ptr %p, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp3 = icmp sgt i64 %sub.ptr.div, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end5:                                          ; preds = %if.end
  ret i32 0
}

declare i32 @deadFunction(...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
