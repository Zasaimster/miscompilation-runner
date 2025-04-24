; 137694661156643289974034006894059056103
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137694661156643289974034006894059056103_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137694661156643289974034006894059056103.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i16, i16 }
%struct.S1 = type { i8, [2 x [2 x i8]], [2 x %struct.S0], [2 x i8] }

@x = dso_local global { i8, [2 x [2 x i8]], i8, [2 x %struct.S0], [2 x i8] } { i8 1, [2 x [2 x i8]] [[2 x i8] c"\02\03", [2 x i8] c"\04\05"], i8 0, [2 x %struct.S0] [%struct.S0 { i16 6, i16 7 }, %struct.S0 { i16 8, i16 9 }], [2 x i8] zeroinitializer }, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @func() #0 {
entry:
  %retval = alloca %struct.S1, align 4
  %0 = load i64, ptr @x, align 4
  %1 = load i64, ptr getelementptr inbounds nuw ({ i64, i64 }, ptr @x, i32 0, i32 1), align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 %0, i64 %1)
  %2 = load { i64, i64 }, ptr %retval, align 4
  ret { i64, i64 } %2
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca %struct.S1, align 4
  store i32 0, ptr %retval, align 4
  %call = call { i64, i64 } @func()
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %ret, i32 0, i32 0
  %1 = extractvalue { i64, i64 } %call, 0
  store i64 %1, ptr %0, align 4
  %2 = getelementptr inbounds nuw { i64, i64 }, ptr %ret, i32 0, i32 1
  %3 = extractvalue { i64, i64 } %call, 1
  store i64 %3, ptr %2, align 4
  %m2 = getelementptr inbounds nuw %struct.S1, ptr %ret, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x %struct.S0], ptr %m2, i64 0, i64 1
  %m1 = getelementptr inbounds nuw %struct.S0, ptr %arrayidx, i32 0, i32 1
  %4 = load i16, ptr %m1, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp ne i32 %conv, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
