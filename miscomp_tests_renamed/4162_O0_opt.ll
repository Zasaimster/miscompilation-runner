; 172794259258089349540948766225681195952
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/172794259258089349540948766225681195952_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/172794259258089349540948766225681195952.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8 }

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
  %call = call i32 (i32, ...) @calculateSquare(i32 noundef 4)
  %cmp = icmp ne i32 %call, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 1
  %0 = load i8, ptr %d, align 1
  %conv = sext i8 %0 to i32
  %cmp1 = icmp ne i32 %conv, 20
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #5
  unreachable

if.end4:                                          ; preds = %if.end
  %e = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 2
  %1 = load i8, ptr %e, align 1
  %conv5 = sext i8 %1 to i32
  %cmp6 = icmp ne i32 %conv5, 30
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @abort() #5
  unreachable

if.end9:                                          ; preds = %if.end4
  %c = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 0
  %2 = load i8, ptr %c, align 1
  %conv10 = sext i8 %2 to i32
  %cmp11 = icmp ne i32 %conv10, 11
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @abort() #5
  unreachable

if.end14:                                         ; preds = %if.end9
  %d15 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 1
  %3 = load i8, ptr %d15, align 1
  %conv16 = sext i8 %3 to i32
  %cmp17 = icmp ne i32 %conv16, 21
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @abort() #5
  unreachable

if.end20:                                         ; preds = %if.end14
  %e21 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 2
  %4 = load i8, ptr %e21, align 1
  %conv22 = sext i8 %4 to i32
  %cmp23 = icmp ne i32 %conv22, 31
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @abort() #5
  unreachable

if.end26:                                         ; preds = %if.end20
  %c27 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 0
  %5 = load i8, ptr %c27, align 1
  %conv28 = sext i8 %5 to i32
  %cmp29 = icmp ne i32 %conv28, 12
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  call void @abort() #5
  unreachable

if.end32:                                         ; preds = %if.end26
  %d33 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 1
  %6 = load i8, ptr %d33, align 1
  %conv34 = sext i8 %6 to i32
  %cmp35 = icmp ne i32 %conv34, 22
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  call void @abort() #5
  unreachable

if.end38:                                         ; preds = %if.end32
  %e39 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 2
  %7 = load i8, ptr %e39, align 1
  %conv40 = sext i8 %7 to i32
  %cmp41 = icmp ne i32 %conv40, 32
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end38
  call void @abort() #5
  unreachable

if.end44:                                         ; preds = %if.end38
  %8 = load i64, ptr %l.addr, align 8
  %cmp45 = icmp ne i64 %8, 123
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @abort() #5
  unreachable

if.end48:                                         ; preds = %if.end44
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @calculateSquare(...) #1

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
