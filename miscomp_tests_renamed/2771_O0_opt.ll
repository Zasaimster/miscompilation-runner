; 1543950225302034793164308369369341170
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/1543950225302034793164308369369341170_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/1543950225302034793164308369369341170.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @a1() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @b(i16 noundef zeroext %data) #0 {
entry:
  %data.addr = alloca i16, align 2
  store i16 %data, ptr %data.addr, align 2
  %0 = load i16, ptr %data.addr, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @a1()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i16, ptr %data.addr, align 2
  %conv1 = zext i16 %1 to i32
  %shl = shl i32 %conv1, 1
  %conv2 = trunc i32 %shl to i16
  store i16 %conv2, ptr %data.addr, align 2
  %2 = load i16, ptr %data.addr, align 2
  %conv3 = zext i16 %2 to i32
  %and4 = and i32 %conv3, 32768
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @a1()
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %3 = load i16, ptr %data.addr, align 2
  %conv8 = zext i16 %3 to i32
  %shl9 = shl i32 %conv8, 1
  %conv10 = trunc i32 %shl9 to i16
  store i16 %conv10, ptr %data.addr, align 2
  %4 = load i16, ptr %data.addr, align 2
  %conv11 = zext i16 %4 to i32
  %and12 = and i32 %conv11, 32768
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7
  call void @a1()
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr @count, align 4
  call void @b(i16 noundef zeroext 0)
  %0 = load i32, ptr @count, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, ptr @count, align 4
  call void @b(i16 noundef zeroext -32768)
  %1 = load i32, ptr @count, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end3:                                          ; preds = %if.end
  store i32 0, ptr @count, align 4
  call void @b(i16 noundef zeroext 16384)
  %2 = load i32, ptr @count, align 4
  %cmp4 = icmp ne i32 %2, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end3
  store i32 0, ptr @count, align 4
  call void @b(i16 noundef zeroext 8192)
  %3 = load i32, ptr @count, align 4
  %cmp7 = icmp ne i32 %3, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @abort() #4
  unreachable

if.end9:                                          ; preds = %if.end6
  store i32 0, ptr @count, align 4
  call void @b(i16 noundef zeroext -16384)
  %4 = load i32, ptr @count, align 4
  %cmp10 = icmp ne i32 %4, 2
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @abort() #4
  unreachable

if.end12:                                         ; preds = %if.end9
  store i32 0, ptr @count, align 4
  call void @b(i16 noundef zeroext -24576)
  %5 = load i32, ptr @count, align 4
  %cmp13 = icmp ne i32 %5, 2
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @abort() #4
  unreachable

if.end15:                                         ; preds = %if.end12
  store i32 0, ptr @count, align 4
  call void @b(i16 noundef zeroext 24576)
  %6 = load i32, ptr @count, align 4
  %cmp16 = icmp ne i32 %6, 2
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @abort() #4
  unreachable

if.end18:                                         ; preds = %if.end15
  store i32 0, ptr @count, align 4
  call void @b(i16 noundef zeroext -8192)
  %7 = load i32, ptr @count, align 4
  %cmp19 = icmp ne i32 %7, 3
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @abort() #4
  unreachable

if.end21:                                         ; preds = %if.end18
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
