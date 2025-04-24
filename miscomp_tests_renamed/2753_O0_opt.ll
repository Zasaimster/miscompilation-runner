; 148209040753914403051747572824767950448
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/148209040753914403051747572824767950448_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/148209040753914403051747572824767950448.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @func6() #0 {
entry:
  %ch = alloca i8, align 1
  store i8 65, ptr %ch, align 1
  %0 = load i8, ptr %ch, align 1
  %conv = sext i8 %0 to i32
  %add = add nsw i32 %conv, 1
  %conv1 = trunc i32 %add to i8
  store i8 %conv1, ptr %ch, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [3 x %struct.tiny], align 4
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %c = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx, i32 0, i32 0
  store i32 10, ptr %c, align 4
  %arrayidx1 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %c2 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx1, i32 0, i32 0
  store i32 11, ptr %c2, align 4
  %arrayidx3 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %c4 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx3, i32 0, i32 0
  store i32 12, ptr %c4, align 4
  %arrayidx5 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %arrayidx7 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %coerce.dive = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx5, i32 0, i32 0
  %0 = load i32, ptr %coerce.dive, align 4
  %coerce.dive8 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx6, i32 0, i32 0
  %1 = load i32, ptr %coerce.dive8, align 4
  %coerce.dive9 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx7, i32 0, i32 0
  %2 = load i32, ptr %coerce.dive9, align 4
  %call = call i32 (i32, i32, i32, i32, i64, ...) @f(i32 noundef 3, i32 %0, i32 %1, i32 %2, i64 noundef 123)
  call void @exit(i32 noundef 0) #3
  unreachable
}

declare i32 @f(...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
