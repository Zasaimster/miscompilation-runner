; 124164001781128752517190407005665424865
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/124164001781128752517190407005665424865_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/124164001781128752517190407005665424865.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i32 %x.coerce, i32 %y.coerce, i32 %z.coerce, i64 noundef %l) #0 {
entry:
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
  call void @abort() #3
  unreachable
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
