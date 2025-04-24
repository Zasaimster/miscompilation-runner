; 173711829214846893752780539910926570321
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173711829214846893752780539910926570321_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173711829214846893752780539910926570321.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c":ab\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  %lim = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @.str, ptr %s, align 8
  %0 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 3
  store ptr %add.ptr, ptr %lim, align 8
  %1 = load ptr, ptr %s, align 8
  %2 = load ptr, ptr %lim, align 8
  %call = call ptr @begfield(i32 noundef 58, ptr noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef 1)
  %3 = load ptr, ptr %s, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %3, i64 2
  %cmp = icmp ne ptr %call, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @begfield(i32 noundef %tab, ptr noundef %ptr, ptr noundef %lim, i32 noundef %sword, i32 noundef %schar) #0 {
entry:
  %tab.addr = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  %lim.addr = alloca ptr, align 8
  %sword.addr = alloca i32, align 4
  %schar.addr = alloca i32, align 4
  store i32 %tab, ptr %tab.addr, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %lim, ptr %lim.addr, align 8
  store i32 %sword, ptr %sword.addr, align 4
  store i32 %schar, ptr %schar.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %lim.addr, align 8
  %cmp = icmp ult ptr null, %0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, ptr %sword.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %sword.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %2, label %while.body, label %while.end11

while.body:                                       ; preds = %land.end
  br label %while.cond1

while.cond1:                                      ; preds = %while.body7, %while.body
  %3 = load ptr, ptr %ptr.addr, align 8
  %4 = load ptr, ptr %lim.addr, align 8
  %cmp2 = icmp ult ptr %3, %4
  br i1 %cmp2, label %land.rhs3, label %land.end6

land.rhs3:                                        ; preds = %while.cond1
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = sext i8 %6 to i32
  %7 = load i32, ptr %tab.addr, align 4
  %cmp4 = icmp ne i32 %conv, %7
  br label %land.end6

land.end6:                                        ; preds = %land.rhs3, %while.cond1
  %8 = phi i1 [ false, %while.cond1 ], [ %cmp4, %land.rhs3 ]
  br i1 %8, label %while.body7, label %while.end

while.body7:                                      ; preds = %land.end6
  %9 = load ptr, ptr %ptr.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %ptr.addr, align 8
  br label %while.cond1, !llvm.loop !6

while.end:                                        ; preds = %land.end6
  %10 = load ptr, ptr %ptr.addr, align 8
  %11 = load ptr, ptr %lim.addr, align 8
  %cmp8 = icmp ult ptr %10, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %12 = load ptr, ptr %ptr.addr, align 8
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr10, ptr %ptr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond, !llvm.loop !8

while.end11:                                      ; preds = %land.end
  %13 = load ptr, ptr %ptr.addr, align 8
  %14 = load i32, ptr %schar.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  %15 = load ptr, ptr %lim.addr, align 8
  %cmp12 = icmp ule ptr %add.ptr, %15
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %while.end11
  %16 = load i32, ptr %schar.addr, align 4
  %17 = load ptr, ptr %ptr.addr, align 8
  %idx.ext15 = sext i32 %16 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %17, i64 %idx.ext15
  store ptr %add.ptr16, ptr %ptr.addr, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %while.end11
  %18 = load ptr, ptr %ptr.addr, align 8
  ret ptr %18
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
!8 = distinct !{!8, !7}
