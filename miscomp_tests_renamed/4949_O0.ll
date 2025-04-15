; 148170284690433536208525951708199095144
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/148170284690433536208525951708199095144.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/148170284690433536208525951708199095144.c"
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
  %d = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 1
  %0 = load i8, ptr %d, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %e = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 2
  %1 = load i8, ptr %e, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 30
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.end
  %f = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 3
  %2 = load i8, ptr %f, align 1
  %conv7 = sext i8 %2 to i32
  %cmp8 = icmp ne i32 %conv7, 40
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @abort() #3
  unreachable

if.end11:                                         ; preds = %if.end6
  %c = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 0
  %3 = load i8, ptr %c, align 1
  %conv12 = sext i8 %3 to i32
  %cmp13 = icmp ne i32 %conv12, 11
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @abort() #3
  unreachable

if.end16:                                         ; preds = %if.end11
  %d17 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 1
  %4 = load i8, ptr %d17, align 1
  %conv18 = sext i8 %4 to i32
  %cmp19 = icmp ne i32 %conv18, 21
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @abort() #3
  unreachable

if.end22:                                         ; preds = %if.end16
  %e23 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 2
  %5 = load i8, ptr %e23, align 1
  %conv24 = sext i8 %5 to i32
  %cmp25 = icmp ne i32 %conv24, 31
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @abort() #3
  unreachable

if.end28:                                         ; preds = %if.end22
  %f29 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 3
  %6 = load i8, ptr %f29, align 1
  %conv30 = sext i8 %6 to i32
  %cmp31 = icmp ne i32 %conv30, 41
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  call void @abort() #3
  unreachable

if.end34:                                         ; preds = %if.end28
  %c35 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 0
  %7 = load i8, ptr %c35, align 1
  %conv36 = sext i8 %7 to i32
  %cmp37 = icmp ne i32 %conv36, 12
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end34
  call void @abort() #3
  unreachable

if.end40:                                         ; preds = %if.end34
  %d41 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 1
  %8 = load i8, ptr %d41, align 1
  %conv42 = sext i8 %8 to i32
  %cmp43 = icmp ne i32 %conv42, 22
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end40
  call void @abort() #3
  unreachable

if.end46:                                         ; preds = %if.end40
  %e47 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 2
  %9 = load i8, ptr %e47, align 1
  %conv48 = sext i8 %9 to i32
  %cmp49 = icmp ne i32 %conv48, 32
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end46
  call void @abort() #3
  unreachable

if.end52:                                         ; preds = %if.end46
  %f53 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 3
  %10 = load i8, ptr %f53, align 1
  %conv54 = sext i8 %10 to i32
  %cmp55 = icmp ne i32 %conv54, 42
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end52
  call void @abort() #3
  unreachable

if.end58:                                         ; preds = %if.end52
  %11 = load i64, ptr %l.addr, align 8
  %cmp59 = icmp ne i64 %11, 123
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end58
  call void @abort() #3
  unreachable

if.end62:                                         ; preds = %if.end58
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
