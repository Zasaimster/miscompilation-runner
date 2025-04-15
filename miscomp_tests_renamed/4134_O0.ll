; 163447697893786236388742359611719489796
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/163447697893786236388742359611719489796.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/163447697893786236388742359611719489796.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.F = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %timeout = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %add.ptr = getelementptr inbounds %struct.F, ptr %0, i64 5
  %1 = ptrtoint ptr %add.ptr to i32
  store i32 %1, ptr %timeout, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %x.addr, align 8
  %i = getelementptr inbounds nuw %struct.F, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %y.addr, align 8
  %i1 = getelementptr inbounds nuw %struct.F, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %i1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %timeout, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %timeout, align 4
  %cmp2 = icmp sgt i32 %inc, 5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %x.addr, align 8
  %i3 = getelementptr inbounds nuw %struct.F, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %i3, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, ptr %i3, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.F, align 4
  %y = alloca %struct.F, align 4
  store i32 0, ptr %retval, align 4
  %i = getelementptr inbounds nuw %struct.F, ptr %x, i32 0, i32 0
  store i32 0, ptr %i, align 4
  %i1 = getelementptr inbounds nuw %struct.F, ptr %y, i32 0, i32 0
  store i32 1, ptr %i1, align 4
  call void @f1(ptr noundef %x, ptr noundef %y)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

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
