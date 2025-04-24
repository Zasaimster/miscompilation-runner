; 190383760344181567566027682799399630232
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190383760344181567566027682799399630232_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190383760344181567566027682799399630232.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8 }

@.str = private unnamed_addr constant [10 x i8] c"I exist!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i16 %x.coerce, i16 %y.coerce, i16 %z.coerce, i64 noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.tiny, align 1
  %y = alloca %struct.tiny, align 1
  %z = alloca %struct.tiny, align 1
  %n.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  store i16 %x.coerce, ptr %x, align 1
  store i16 %y.coerce, ptr %y, align 1
  store i16 %z.coerce, ptr %z, align 1
  store i32 %n, ptr %n.addr, align 4
  store i64 %l, ptr %l.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp = icmp ne i32 %call, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 1
  %0 = load i8, ptr %d, align 1
  %conv = sext i8 %0 to i32
  %cmp1 = icmp ne i32 %conv, 20
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end4:                                          ; preds = %if.end
  %c = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 0
  %1 = load i8, ptr %c, align 1
  %conv5 = sext i8 %1 to i32
  %cmp6 = icmp ne i32 %conv5, 11
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @abort() #4
  unreachable

if.end9:                                          ; preds = %if.end4
  %d10 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 1
  %2 = load i8, ptr %d10, align 1
  %conv11 = sext i8 %2 to i32
  %cmp12 = icmp ne i32 %conv11, 21
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @abort() #4
  unreachable

if.end15:                                         ; preds = %if.end9
  %c16 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 0
  %3 = load i8, ptr %c16, align 1
  %conv17 = sext i8 %3 to i32
  %cmp18 = icmp ne i32 %conv17, 12
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @abort() #4
  unreachable

if.end21:                                         ; preds = %if.end15
  %d22 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 1
  %4 = load i8, ptr %d22, align 1
  %conv23 = sext i8 %4 to i32
  %cmp24 = icmp ne i32 %conv23, 22
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @abort() #4
  unreachable

if.end27:                                         ; preds = %if.end21
  %5 = load i64, ptr %l.addr, align 8
  %cmp28 = icmp ne i64 %5, 123
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @abort() #4
  unreachable

if.end31:                                         ; preds = %if.end27
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [3 x %struct.tiny], align 1
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %c = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx, i32 0, i32 0
  store i8 10, ptr %c, align 1
  %arrayidx1 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %c2 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx1, i32 0, i32 0
  store i8 11, ptr %c2, align 1
  %arrayidx3 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %c4 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx3, i32 0, i32 0
  store i8 12, ptr %c4, align 1
  %arrayidx5 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %d = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx5, i32 0, i32 1
  store i8 20, ptr %d, align 1
  %arrayidx6 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %d7 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx6, i32 0, i32 1
  store i8 21, ptr %d7, align 1
  %arrayidx8 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %d9 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx8, i32 0, i32 1
  store i8 22, ptr %d9, align 1
  %arrayidx10 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %arrayidx12 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %0 = load i16, ptr %arrayidx10, align 1
  %1 = load i16, ptr %arrayidx11, align 1
  %2 = load i16, ptr %arrayidx12, align 1
  %call = call i32 @f(i32 noundef 3, i16 %0, i16 %1, i16 %2, i64 noundef 123)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
