; 102281383106856397622362271343283785642
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/102281383106856397622362271343283785642.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/102281383106856397622362271343283785642.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"I'm not used\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %X = alloca %struct.T, align 4
  %Y = alloca %struct.T, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %A = getelementptr inbounds nuw %struct.T, ptr %X, i32 0, i32 0
  store i32 10, ptr %A, align 4
  %A1 = getelementptr inbounds nuw %struct.T, ptr %Y, i32 0, i32 0
  store i32 20, ptr %A1, align 4
  %coerce.dive = getelementptr inbounds nuw %struct.T, ptr %X, i32 0, i32 0
  %0 = load i32, ptr %coerce.dive, align 4
  %coerce.dive2 = getelementptr inbounds nuw %struct.T, ptr %Y, i32 0, i32 0
  %1 = load i32, ptr %coerce.dive2, align 4
  call void (i32, i32, i32, ...) @f(i32 noundef 2, i32 %0, i32 %1)
  call void @exit(i32 noundef 0) #3
  unreachable
}

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
