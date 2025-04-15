; 12548959312816751363294082761398923263
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/12548959312816751363294082761398923263_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/12548959312816751363294082761398923263.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 256, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test() #0 {
entry:
  %0 = load i32, ptr @a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr @a, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 1, %cond.false ]
  %2 = load i32, ptr @a, align 4
  %3 = load i32, ptr @b, align 4
  %mul = mul nsw i32 %2, %3
  %and = and i32 %cond, %mul
  %conv = sext i32 %and to i64
  %conv1 = trunc i64 %conv to i8
  %conv2 = zext i8 %conv1 to i32
  %tobool3 = icmp ne i32 %conv2, 0
  %cond4 = select i1 %tobool3, i32 0, i32 1
  ret i32 %cond4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @test()
  %sub = sub nsw i32 1, %call
  ret i32 %sub
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
