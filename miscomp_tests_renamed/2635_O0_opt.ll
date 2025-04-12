; 19160347847708489979125998302026006858
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19160347847708489979125998302026006858_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19160347847708489979125998302026006858.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %BM_tab, i32 noundef %j) #0 {
entry:
  %BM_tab.addr = alloca ptr, align 8
  %j.addr = alloca i32, align 4
  %BM_tab_base = alloca ptr, align 8
  store ptr %BM_tab, ptr %BM_tab.addr, align 8
  store i32 %j, ptr %j.addr, align 4
  store ptr null, ptr %BM_tab_base, align 8
  %0 = load ptr, ptr %BM_tab.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 256
  store ptr %add.ptr, ptr %BM_tab.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %BM_tab_base, align 8
  %2 = load ptr, ptr %BM_tab.addr, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %j.addr, align 4
  %4 = load ptr, ptr %BM_tab.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %4, i32 -1
  store ptr %incdec.ptr, ptr %BM_tab.addr, align 8
  store i32 %3, ptr %incdec.ptr, align 4
  %5 = load i32, ptr %j.addr, align 4
  %6 = load ptr, ptr %BM_tab.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %BM_tab.addr, align 8
  store i32 %5, ptr %incdec.ptr1, align 4
  %7 = load i32, ptr %j.addr, align 4
  %8 = load ptr, ptr %BM_tab.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i32, ptr %8, i32 -1
  store ptr %incdec.ptr2, ptr %BM_tab.addr, align 8
  store i32 %7, ptr %incdec.ptr2, align 4
  %9 = load i32, ptr %j.addr, align 4
  %10 = load ptr, ptr %BM_tab.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i32, ptr %10, i32 -1
  store ptr %incdec.ptr3, ptr %BM_tab.addr, align 8
  store i32 %9, ptr %incdec.ptr3, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %BM_tab = alloca [256 x i32], align 16
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [256 x i32], ptr %BM_tab, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 1024, i1 false)
  %arraydecay1 = getelementptr inbounds [256 x i32], ptr %BM_tab, i64 0, i64 0
  call void @foo(ptr noundef %arraydecay1, i32 noundef 6)
  %arrayidx = getelementptr inbounds [256 x i32], ptr %BM_tab, i64 0, i64 0
  %0 = load i32, ptr %arrayidx, align 16
  %cmp = icmp ne i32 %0, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
