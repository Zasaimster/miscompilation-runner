; 129233528091905231754516940935969669246
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129233528091905231754516940935969669246_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129233528091905231754516940935969669246.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DummyStruct = type { ptr, i32 }

@.str = private unnamed_addr constant [28 x i8] c"&S1 = %p\09&S2 = %p\09&S3 = %p\0A\00", align 1
@testAllocaOrder.count = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AddCounts(ptr noundef %S1, ptr noundef %S2, ptr noundef %S3, i32 noundef %noPrint) #0 {
entry:
  %S1.addr = alloca ptr, align 8
  %S2.addr = alloca ptr, align 8
  %S3.addr = alloca ptr, align 8
  %noPrint.addr = alloca i32, align 4
  store ptr %S1, ptr %S1.addr, align 8
  store ptr %S2, ptr %S2.addr, align 8
  store ptr %S3, ptr %S3.addr, align 8
  store i32 %noPrint, ptr %noPrint.addr, align 4
  %0 = load i32, ptr %noPrint.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %S1.addr, align 8
  %2 = load ptr, ptr %S2.addr, align 8
  %3 = load ptr, ptr %S3.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 (...) @deadFunction()
  %4 = load ptr, ptr %S1.addr, align 8
  %seqnum = getelementptr inbounds nuw %struct.DummyStruct, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %seqnum, align 8
  %6 = load ptr, ptr %S2.addr, align 8
  %seqnum2 = getelementptr inbounds nuw %struct.DummyStruct, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %seqnum2, align 8
  %add = add nsw i32 %5, %7
  %8 = load ptr, ptr %S3.addr, align 8
  %seqnum3 = getelementptr inbounds nuw %struct.DummyStruct, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %seqnum3, align 8
  %add4 = add nsw i32 %add, %9
  ret i32 %add4
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @deadFunction(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testAllocaOrder(i32 noundef %noPrint) #0 {
entry:
  %noPrint.addr = alloca i32, align 4
  %S1 = alloca %struct.DummyStruct, align 8
  %S2 = alloca %struct.DummyStruct, align 8
  %S3 = alloca %struct.DummyStruct, align 8
  store i32 %noPrint, ptr %noPrint.addr, align 4
  %0 = load i32, ptr @testAllocaOrder.count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @testAllocaOrder.count, align 4
  %seqnum = getelementptr inbounds nuw %struct.DummyStruct, ptr %S1, i32 0, i32 1
  store i32 %inc, ptr %seqnum, align 8
  %1 = load i32, ptr @testAllocaOrder.count, align 4
  %inc1 = add nsw i32 %1, 1
  store i32 %inc1, ptr @testAllocaOrder.count, align 4
  %seqnum2 = getelementptr inbounds nuw %struct.DummyStruct, ptr %S2, i32 0, i32 1
  store i32 %inc1, ptr %seqnum2, align 8
  %2 = load i32, ptr @testAllocaOrder.count, align 4
  %inc3 = add nsw i32 %2, 1
  store i32 %inc3, ptr @testAllocaOrder.count, align 4
  %seqnum4 = getelementptr inbounds nuw %struct.DummyStruct, ptr %S3, i32 0, i32 1
  store i32 %inc3, ptr %seqnum4, align 8
  %3 = load i32, ptr %noPrint.addr, align 4
  %call = call i32 @AddCounts(ptr noundef %S1, ptr noundef %S2, ptr noundef %S3, i32 noundef %3)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %noPrint = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %noPrint, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.2) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %noPrint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %cmp1 = icmp ult i32 %3, 10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %noPrint, align 4
  call void @testAllocaOrder(i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
