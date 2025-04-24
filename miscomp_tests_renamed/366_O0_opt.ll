; 106214073847557627079987686390842998609
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106214073847557627079987686390842998609_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106214073847557627079987686390842998609.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8 }

@s = dso_local global { i32, i8, [3 x i8] } { i32 1193046, i8 120, [3 x i8] zeroinitializer }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pr67781() #0 {
entry:
  %c = alloca i32, align 4
  %0 = load i32, ptr @s, align 4
  %shl = shl i32 %0, 8
  %1 = load i8, ptr getelementptr inbounds nuw (%struct.anon, ptr @s, i32 0, i32 1), align 4
  %conv = zext i8 %1 to i32
  %or = or i32 %shl, %conv
  store i32 %or, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @pr67781()
  %cmp = icmp ne i32 %call, 305419896
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
