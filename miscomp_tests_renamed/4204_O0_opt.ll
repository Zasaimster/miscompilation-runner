; 119211398160462061456488189826586352855
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119211398160462061456488189826586352855_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119211398160462061456488189826586352855.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ty = type { ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"Loop done\0A\00", align 1
@b = dso_local global [6 x i8] zeroinitializer, align 1
@s = dso_local global %struct.input_ty zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @input_getc_complicated(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_header(ptr noundef %deeper) #0 {
entry:
  %retval = alloca i32, align 4
  %deeper.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %deeper, ptr %deeper.addr, align 8
  store i32 0, ptr %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp = icmp slt i32 %call, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %deeper.addr, align 8
  %buffer_position = getelementptr inbounds nuw %struct.input_ty, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %buffer_position, align 8
  %2 = load ptr, ptr %deeper.addr, align 8
  %buffer_end = getelementptr inbounds nuw %struct.input_ty, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %buffer_end, align 8
  %cmp1 = icmp ult ptr %1, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %4 = load ptr, ptr %deeper.addr, align 8
  %buffer_position2 = getelementptr inbounds nuw %struct.input_ty, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %buffer_position2, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %buffer_position2, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load ptr, ptr %deeper.addr, align 8
  %call3 = call i32 @input_getc_complicated(ptr noundef %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call6 = call i32 (...) @example8()
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @example8(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store ptr @b, ptr @s, align 8
  store ptr getelementptr inbounds nuw (i8, ptr @b, i64 6), ptr getelementptr inbounds nuw (%struct.input_ty, ptr @s, i32 0, i32 1), align 8
  %call = call i32 @check_header(ptr noundef @s)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @s, align 8
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.input_ty, ptr @s, i32 0, i32 1), align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end2:                                          ; preds = %if.end
  ret i32 0
}

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
