; 11473325348450516624840102372810572777
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/11473325348450516624840102372810572777.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/11473325348450516624840102372810572777.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [3 x i8] }

@v = dso_local global i32 -1, align 4
@s = dso_local global %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @v, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = zext i1 %cmp to i32
  %1 = trunc i32 %conv to i8
  %bf.load = load i8, ptr @s, align 4
  %bf.value = and i8 %1, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, ptr @s, align 4
  %bf.result.shl = shl i8 %bf.value, 7
  %bf.result.ashr = ashr i8 %bf.result.shl, 7
  %bf.result.cast = sext i8 %bf.result.ashr to i32
  ret i32 0
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
