; 197605742075547036184610580818700538586
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/197605742075547036184610580818700538586.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/197605742075547036184610580818700538586.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@c = internal global %struct.a zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Value of a: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %bf.load = load volatile i64, ptr getelementptr inbounds nuw (%struct.a, ptr @c, i32 0, i32 1), align 4
  %bf.shl = shl i64 %bf.load, 14
  %bf.ashr = ashr i64 %bf.shl, 46
  %bf.cast = trunc i64 %bf.ashr to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %bf.cast)
  %0 = load i64, ptr getelementptr inbounds (i8, ptr @c, i64 8), align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 %0)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
