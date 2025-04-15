; 173741884191377946520717735852901496138
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173741884191377946520717735852901496138_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173741884191377946520717735852901496138.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, [2 x i8] }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@s = dso_local global %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %bf.load = load i16, ptr @s, align 4
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 63
  %bf.cast = zext i16 %bf.clear to i32
  %0 = trunc i32 %bf.cast to i16
  %bf.load1 = load i16, ptr @s, align 4
  %bf.value = and i16 %0, 15
  %bf.clear2 = and i16 %bf.load1, -16
  %bf.set = or i16 %bf.clear2, %bf.value
  store i16 %bf.set, ptr @s, align 4
  %bf.load3 = load i16, ptr @s, align 4
  %bf.clear4 = and i16 %bf.load3, 15
  %bf.cast5 = zext i16 %bf.clear4 to i32
  %1 = trunc i32 %bf.cast5 to i16
  %bf.load6 = load i16, ptr @s, align 4
  %bf.value7 = and i16 %1, 63
  %bf.shl = shl i16 %bf.value7, 4
  %bf.clear8 = and i16 %bf.load6, -1009
  %bf.set9 = or i16 %bf.clear8, %bf.shl
  store i16 %bf.set9, ptr @s, align 4
  %bf.load11 = load i16, ptr @s, align 4
  %bf.lshr12 = lshr i16 %bf.load11, 4
  %bf.clear13 = and i16 %bf.lshr12, 63
  %bf.cast14 = zext i16 %bf.clear13 to i32
  %cmp = icmp ne i32 %bf.cast14, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

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
