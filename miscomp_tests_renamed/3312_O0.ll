; 157768778756182599614600871566788003433
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157768778756182599614600871566788003433.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157768778756182599614600871566788003433.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [0 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %sp, i32 noundef %cnt) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %cnt.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %top = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store i32 %cnt, ptr %cnt.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  store ptr %0, ptr %top, align 8
  %1 = load i32, ptr %cnt.addr, align 4
  %2 = load ptr, ptr %sp.addr, align 8
  %idx.ext = sext i32 %1 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.neg
  store ptr %add.ptr, ptr %sp.addr, align 8
  %3 = load ptr, ptr %sp.addr, align 8
  store ptr %3, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %p, align 8
  %5 = load ptr, ptr %top, align 8
  %cmp = icmp ule ptr %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8
  %7 = load i32, ptr %6, align 4
  %cmp1 = icmp slt i32 %7, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @exit(i32 noundef 0) #3
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo(ptr noundef getelementptr inbounds (i32, ptr @a, i64 1), i32 noundef 1)
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }
attributes #4 = { noreturn nounwind }

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
