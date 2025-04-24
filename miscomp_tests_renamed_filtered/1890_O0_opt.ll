; 13340756728747375490905315285938300589
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/13340756728747375490905315285938300589_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/13340756728747375490905315285938300589.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, [2 x i8] }

@s = dso_local global %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %bf.load = load i16, ptr @s, align 4
  %bf.clear = and i16 %bf.load, -1009
  %bf.set = or i16 %bf.clear, 64
  store i16 %bf.set, ptr @s, align 4
  %bf.load1 = load i16, ptr @s, align 4
  %bf.lshr = lshr i16 %bf.load1, 4
  %bf.clear2 = and i16 %bf.lshr, 63
  %bf.cast = zext i16 %bf.clear2 to i32
  %0 = trunc i32 %bf.cast to i16
  %bf.load3 = load i16, ptr @s, align 4
  %bf.value = and i16 %0, 15
  %bf.clear4 = and i16 %bf.load3, -16
  %bf.set5 = or i16 %bf.clear4, %bf.value
  store i16 %bf.set5, ptr @s, align 4
  %bf.load6 = load i16, ptr @s, align 4
  %bf.clear7 = and i16 %bf.load6, 15
  %bf.cast8 = zext i16 %bf.clear7 to i32
  %1 = trunc i32 %bf.cast8 to i16
  %bf.load9 = load i16, ptr @s, align 4
  %bf.value10 = and i16 %1, 63
  %bf.shl = shl i16 %bf.value10, 4
  %bf.clear11 = and i16 %bf.load9, -1009
  %bf.set12 = or i16 %bf.clear11, %bf.shl
  store i16 %bf.set12, ptr @s, align 4
  %bf.load14 = load i16, ptr @s, align 4
  %bf.lshr15 = lshr i16 %bf.load14, 4
  %bf.clear16 = and i16 %bf.lshr15, 63
  %bf.cast17 = zext i16 %bf.clear16 to i32
  %cmp = icmp ne i32 %bf.cast17, 15
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
