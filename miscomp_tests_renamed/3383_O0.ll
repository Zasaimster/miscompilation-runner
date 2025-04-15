; 130066268441034654386915191195146211230
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/130066268441034654386915191195146211230.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/130066268441034654386915191195146211230.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8 }

@.str = private unnamed_addr constant [16 x i8] c"I am not used!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @unusedFunction() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

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
  %call = call i32 (i32, i24, i24, i24, i64, ...) @f(i32 noundef 3, i24 %0, i24 %1, i24 %2, i64 noundef 123)
  call void @exit(i32 noundef 0) #4
  unreachable
}

declare i32 @f(...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
