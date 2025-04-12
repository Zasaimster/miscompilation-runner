; 188933246403161514524000771848435838935
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188933246403161514524000771848435838935_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188933246403161514524000771848435838935.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i16, i16 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i32 %x.coerce, i32 %y.coerce, i32 %z.coerce, i64 noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.tiny, align 2
  %y = alloca %struct.tiny, align 2
  %z = alloca %struct.tiny, align 2
  %n.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  store i32 %x.coerce, ptr %x, align 2
  store i32 %y.coerce, ptr %y, align 2
  store i32 %z.coerce, ptr %z, align 2
  store i32 %n, ptr %n.addr, align 4
  store i64 %l, ptr %l.addr, align 8
  %0 = load i32, ptr %x, align 2
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 %0)
  %d = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 1
  %1 = load i16, ptr %d, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %c = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 0
  %2 = load i16, ptr %c, align 2
  %conv2 = sext i16 %2 to i32
  %cmp3 = icmp ne i32 %conv2, 11
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end
  %d7 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 1
  %3 = load i16, ptr %d7, align 2
  %conv8 = sext i16 %3 to i32
  %cmp9 = icmp ne i32 %conv8, 21
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @abort() #4
  unreachable

if.end12:                                         ; preds = %if.end6
  %c13 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 0
  %4 = load i16, ptr %c13, align 2
  %conv14 = sext i16 %4 to i32
  %cmp15 = icmp ne i32 %conv14, 12
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @abort() #4
  unreachable

if.end18:                                         ; preds = %if.end12
  %d19 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 1
  %5 = load i16, ptr %d19, align 2
  %conv20 = sext i16 %5 to i32
  %cmp21 = icmp ne i32 %conv20, 22
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  call void @abort() #4
  unreachable

if.end24:                                         ; preds = %if.end18
  %6 = load i64, ptr %l.addr, align 8
  %cmp25 = icmp ne i64 %6, 123
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @abort() #4
  unreachable

if.end28:                                         ; preds = %if.end24
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
