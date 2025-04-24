; 110227282170988361081656161057996996142
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/110227282170988361081656161057996996142_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/110227282170988361081656161057996996142.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i32 %x.coerce, i32 %y.coerce, i32 %z.coerce, i64 noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.tiny, align 1
  %y = alloca %struct.tiny, align 1
  %z = alloca %struct.tiny, align 1
  %n.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  store i32 %x.coerce, ptr %x, align 1
  store i32 %y.coerce, ptr %y, align 1
  store i32 %z.coerce, ptr %z, align 1
  store i32 %n, ptr %n.addr, align 4
  store i64 %l, ptr %l.addr, align 8
  %call = call i32 (...) @doNothing()
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
  %e = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 2
  %1 = load i8, ptr %e, align 1
  %conv5 = sext i8 %1 to i32
  %cmp6 = icmp ne i32 %conv5, 30
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @abort() #4
  unreachable

if.end9:                                          ; preds = %if.end4
  %f = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 3
  %2 = load i8, ptr %f, align 1
  %conv10 = sext i8 %2 to i32
  %cmp11 = icmp ne i32 %conv10, 40
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @abort() #4
  unreachable

if.end14:                                         ; preds = %if.end9
  %c = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 0
  %3 = load i8, ptr %c, align 1
  %conv15 = sext i8 %3 to i32
  %cmp16 = icmp ne i32 %conv15, 11
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @abort() #4
  unreachable

if.end19:                                         ; preds = %if.end14
  %d20 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 1
  %4 = load i8, ptr %d20, align 1
  %conv21 = sext i8 %4 to i32
  %cmp22 = icmp ne i32 %conv21, 21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @abort() #4
  unreachable

if.end25:                                         ; preds = %if.end19
  %e26 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 2
  %5 = load i8, ptr %e26, align 1
  %conv27 = sext i8 %5 to i32
  %cmp28 = icmp ne i32 %conv27, 31
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  call void @abort() #4
  unreachable

if.end31:                                         ; preds = %if.end25
  %f32 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 3
  %6 = load i8, ptr %f32, align 1
  %conv33 = sext i8 %6 to i32
  %cmp34 = icmp ne i32 %conv33, 41
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  call void @abort() #4
  unreachable

if.end37:                                         ; preds = %if.end31
  %c38 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 0
  %7 = load i8, ptr %c38, align 1
  %conv39 = sext i8 %7 to i32
  %cmp40 = icmp ne i32 %conv39, 12
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end37
  call void @abort() #4
  unreachable

if.end43:                                         ; preds = %if.end37
  %d44 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 1
  %8 = load i8, ptr %d44, align 1
  %conv45 = sext i8 %8 to i32
  %cmp46 = icmp ne i32 %conv45, 22
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  call void @abort() #4
  unreachable

if.end49:                                         ; preds = %if.end43
  %e50 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 2
  %9 = load i8, ptr %e50, align 1
  %conv51 = sext i8 %9 to i32
  %cmp52 = icmp ne i32 %conv51, 32
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  call void @abort() #4
  unreachable

if.end55:                                         ; preds = %if.end49
  %f56 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 3
  %10 = load i8, ptr %f56, align 1
  %conv57 = sext i8 %10 to i32
  %cmp58 = icmp ne i32 %conv57, 42
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end55
  call void @abort() #4
  unreachable

if.end61:                                         ; preds = %if.end55
  %11 = load i64, ptr %l.addr, align 8
  %cmp62 = icmp ne i64 %11, 123
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  call void @abort() #4
  unreachable

if.end65:                                         ; preds = %if.end61
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @doNothing(...) #1

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
  %e = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx10, i32 0, i32 2
  store i8 30, ptr %e, align 1
  %arrayidx11 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %e12 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx11, i32 0, i32 2
  store i8 31, ptr %e12, align 1
  %arrayidx13 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %e14 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx13, i32 0, i32 2
  store i8 32, ptr %e14, align 1
  %arrayidx15 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %f = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx15, i32 0, i32 3
  store i8 40, ptr %f, align 1
  %arrayidx16 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %f17 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx16, i32 0, i32 3
  store i8 41, ptr %f17, align 1
  %arrayidx18 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %f19 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx18, i32 0, i32 3
  store i8 42, ptr %f19, align 1
  %arrayidx20 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %arrayidx21 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %arrayidx22 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %0 = load i32, ptr %arrayidx20, align 1
  %1 = load i32, ptr %arrayidx21, align 1
  %2 = load i32, ptr %arrayidx22, align 1
  %call = call i32 @f(i32 noundef 3, i32 %0, i32 %1, i32 %2, i64 noundef 123)
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
