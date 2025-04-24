; 128157677592400301468049260746110454662
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/128157677592400301468049260746110454662_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/128157677592400301468049260746110454662.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i16, i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i32 %x.coerce, i32 %y.coerce, i32 %z.coerce, i64 noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.tiny, align 2
  %y = alloca %struct.tiny, align 2
  %z = alloca %struct.tiny, align 2
  %n.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %x.coerce, ptr %x, align 2
  store i32 %y.coerce, ptr %y, align 2
  store i32 %z.coerce, ptr %z, align 2
  store i32 %n, ptr %n.addr, align 4
  store i64 %l, ptr %l.addr, align 8
  %c = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 0
  %0 = load i16, ptr %c, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %d = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 1
  %3 = load i16, ptr %d, align 2
  %conv4 = sext i16 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 20
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %for.end
  %c9 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 0
  %4 = load i16, ptr %c9, align 2
  %conv10 = sext i16 %4 to i32
  %cmp11 = icmp ne i32 %conv10, 11
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @abort() #3
  unreachable

if.end14:                                         ; preds = %if.end8
  %d15 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 1
  %5 = load i16, ptr %d15, align 2
  %conv16 = sext i16 %5 to i32
  %cmp17 = icmp ne i32 %conv16, 21
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.end14
  %c21 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 0
  %6 = load i16, ptr %c21, align 2
  %conv22 = sext i16 %6 to i32
  %cmp23 = icmp ne i32 %conv22, 12
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @abort() #3
  unreachable

if.end26:                                         ; preds = %if.end20
  %d27 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 1
  %7 = load i16, ptr %d27, align 2
  %conv28 = sext i16 %7 to i32
  %cmp29 = icmp ne i32 %conv28, 22
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  call void @abort() #3
  unreachable

if.end32:                                         ; preds = %if.end26
  %8 = load i64, ptr %l.addr, align 8
  %cmp33 = icmp ne i64 %8, 123
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @abort() #3
  unreachable

if.end36:                                         ; preds = %if.end32
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [3 x %struct.tiny], align 2
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %c = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx, i32 0, i32 0
  store i16 10, ptr %c, align 2
  %arrayidx1 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %c2 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx1, i32 0, i32 0
  store i16 11, ptr %c2, align 2
  %arrayidx3 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %c4 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx3, i32 0, i32 0
  store i16 12, ptr %c4, align 2
  %arrayidx5 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %d = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx5, i32 0, i32 1
  store i16 20, ptr %d, align 2
  %arrayidx6 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %d7 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx6, i32 0, i32 1
  store i16 21, ptr %d7, align 2
  %arrayidx8 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %d9 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx8, i32 0, i32 1
  store i16 22, ptr %d9, align 2
  %arrayidx10 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %arrayidx12 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %0 = load i32, ptr %arrayidx10, align 2
  %1 = load i32, ptr %arrayidx11, align 2
  %2 = load i32, ptr %arrayidx12, align 2
  %call = call i32 @f(i32 noundef 3, i32 %0, i32 %1, i32 %2, i64 noundef 123)
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
