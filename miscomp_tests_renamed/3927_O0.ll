; 199108877683209885707156230250682679272
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/199108877683209885707156230250682679272.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/199108877683209885707156230250682679272.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i24 %x.coerce, i24 %y.coerce, i24 %z.coerce, i64 noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.tiny, align 1
  %y = alloca %struct.tiny, align 1
  %z = alloca %struct.tiny, align 1
  %n.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  store i24 %x.coerce, ptr %x, align 1
  store i24 %y.coerce, ptr %y, align 1
  store i24 %z.coerce, ptr %z, align 1
  store i32 %n, ptr %n.addr, align 4
  store i64 %l, ptr %l.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %d = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 1
  %0 = load i8, ptr %d, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %e = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 2
  %1 = load i8, ptr %e, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 30
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #5
  unreachable

if.end6:                                          ; preds = %if.end
  %c = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 0
  %2 = load i8, ptr %c, align 1
  %conv7 = sext i8 %2 to i32
  %cmp8 = icmp ne i32 %conv7, 11
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @abort() #5
  unreachable

if.end11:                                         ; preds = %if.end6
  %d12 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 1
  %3 = load i8, ptr %d12, align 1
  %conv13 = sext i8 %3 to i32
  %cmp14 = icmp ne i32 %conv13, 21
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  call void @abort() #5
  unreachable

if.end17:                                         ; preds = %if.end11
  %e18 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 2
  %4 = load i8, ptr %e18, align 1
  %conv19 = sext i8 %4 to i32
  %cmp20 = icmp ne i32 %conv19, 31
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  call void @abort() #5
  unreachable

if.end23:                                         ; preds = %if.end17
  %c24 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 0
  %5 = load i8, ptr %c24, align 1
  %conv25 = sext i8 %5 to i32
  %cmp26 = icmp ne i32 %conv25, 12
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  call void @abort() #5
  unreachable

if.end29:                                         ; preds = %if.end23
  %d30 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 1
  %6 = load i8, ptr %d30, align 1
  %conv31 = sext i8 %6 to i32
  %cmp32 = icmp ne i32 %conv31, 22
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  call void @abort() #5
  unreachable

if.end35:                                         ; preds = %if.end29
  %e36 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 2
  %7 = load i8, ptr %e36, align 1
  %conv37 = sext i8 %7 to i32
  %cmp38 = icmp ne i32 %conv37, 32
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end35
  call void @abort() #5
  unreachable

if.end41:                                         ; preds = %if.end35
  %8 = load i64, ptr %l.addr, align 8
  %cmp42 = icmp ne i64 %8, 123
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @abort() #5
  unreachable

if.end45:                                         ; preds = %if.end41
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [3 x %struct.tiny], align 1
  %arrayidx15.coerce = alloca i24, align 4
  %arrayidx16.coerce = alloca i24, align 4
  %arrayidx17.coerce = alloca i24, align 4
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
  %arrayidx16 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %arrayidx17 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx15.coerce, ptr align 1 %arrayidx15, i64 3, i1 false)
  %0 = load i24, ptr %arrayidx15.coerce, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx16.coerce, ptr align 1 %arrayidx16, i64 3, i1 false)
  %1 = load i24, ptr %arrayidx16.coerce, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx17.coerce, ptr align 1 %arrayidx17, i64 3, i1 false)
  %2 = load i24, ptr %arrayidx17.coerce, align 4
  %call = call i32 @f(i32 noundef 3, i24 %0, i24 %1, i24 %2, i64 noundef 123)
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
