; 105778927074990621443578278214985120612
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/105778927074990621443578278214985120612.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/105778927074990621443578278214985120612.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @NSReturnAddress(i32 noundef %offset) local_unnamed_addr #0 {
entry:
  %mul = mul nsw i32 %offset, %offset
  switch i32 %mul, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 69, label %sw.bb69
    i32 68, label %sw.bb68
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 97, label %sw.bb97
    i32 96, label %sw.bb96
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 52, label %sw.bb52
    i32 53, label %sw.bb53
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 93, label %sw.bb93
    i32 92, label %sw.bb92
    i32 16, label %sw.bb16
    i32 17, label %sw.bb17
    i32 73, label %sw.bb73
    i32 72, label %sw.bb72
    i32 20, label %sw.bb20
    i32 21, label %sw.bb21
    i32 89, label %sw.bb89
    i32 88, label %sw.bb88
    i32 24, label %sw.bb24
    i32 25, label %sw.bb25
    i32 56, label %sw.bb56
    i32 57, label %sw.bb57
    i32 28, label %sw.bb28
    i32 29, label %sw.bb29
    i32 85, label %sw.bb85
    i32 84, label %sw.bb84
    i32 32, label %sw.bb32
    i32 33, label %sw.bb33
    i32 64, label %sw.bb64
    i32 65, label %sw.bb65
    i32 36, label %sw.bb36
    i32 37, label %sw.bb37
    i32 81, label %sw.bb81
    i32 80, label %sw.bb80
    i32 40, label %sw.bb40
    i32 41, label %sw.bb41
    i32 60, label %sw.bb60
    i32 61, label %sw.bb61
    i32 44, label %sw.bb44
    i32 45, label %sw.bb45
    i32 77, label %sw.bb77
    i32 76, label %sw.bb76
    i32 48, label %sw.bb48
    i32 49, label %sw.bb49
  ]

sw.bb:                                            ; preds = %entry
  %0 = tail call ptr @llvm.returnaddress(i32 1)
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = tail call ptr @llvm.returnaddress(i32 2)
  br label %return

sw.bb4:                                           ; preds = %entry
  %2 = tail call ptr @llvm.returnaddress(i32 5)
  br label %return

sw.bb5:                                           ; preds = %entry
  %3 = tail call ptr @llvm.returnaddress(i32 6)
  br label %return

sw.bb8:                                           ; preds = %entry
  %4 = tail call ptr @llvm.returnaddress(i32 9)
  br label %return

sw.bb9:                                           ; preds = %entry
  %5 = tail call ptr @llvm.returnaddress(i32 10)
  br label %return

sw.bb12:                                          ; preds = %entry
  %6 = tail call ptr @llvm.returnaddress(i32 13)
  br label %return

sw.bb13:                                          ; preds = %entry
  %7 = tail call ptr @llvm.returnaddress(i32 14)
  br label %return

sw.bb16:                                          ; preds = %entry
  %8 = tail call ptr @llvm.returnaddress(i32 17)
  br label %return

sw.bb17:                                          ; preds = %entry
  %9 = tail call ptr @llvm.returnaddress(i32 18)
  br label %return

sw.bb20:                                          ; preds = %entry
  %10 = tail call ptr @llvm.returnaddress(i32 21)
  br label %return

sw.bb21:                                          ; preds = %entry
  %11 = tail call ptr @llvm.returnaddress(i32 22)
  br label %return

sw.bb24:                                          ; preds = %entry
  %12 = tail call ptr @llvm.returnaddress(i32 25)
  br label %return

sw.bb25:                                          ; preds = %entry
  %13 = tail call ptr @llvm.returnaddress(i32 26)
  br label %return

sw.bb28:                                          ; preds = %entry
  %14 = tail call ptr @llvm.returnaddress(i32 29)
  br label %return

sw.bb29:                                          ; preds = %entry
  %15 = tail call ptr @llvm.returnaddress(i32 30)
  br label %return

sw.bb32:                                          ; preds = %entry
  %16 = tail call ptr @llvm.returnaddress(i32 33)
  br label %return

sw.bb33:                                          ; preds = %entry
  %17 = tail call ptr @llvm.returnaddress(i32 34)
  br label %return

sw.bb36:                                          ; preds = %entry
  %18 = tail call ptr @llvm.returnaddress(i32 37)
  br label %return

sw.bb37:                                          ; preds = %entry
  %19 = tail call ptr @llvm.returnaddress(i32 38)
  br label %return

sw.bb40:                                          ; preds = %entry
  %20 = tail call ptr @llvm.returnaddress(i32 41)
  br label %return

sw.bb41:                                          ; preds = %entry
  %21 = tail call ptr @llvm.returnaddress(i32 42)
  br label %return

sw.bb44:                                          ; preds = %entry
  %22 = tail call ptr @llvm.returnaddress(i32 45)
  br label %return

sw.bb45:                                          ; preds = %entry
  %23 = tail call ptr @llvm.returnaddress(i32 46)
  br label %return

sw.bb48:                                          ; preds = %entry
  %24 = tail call ptr @llvm.returnaddress(i32 49)
  br label %return

sw.bb49:                                          ; preds = %entry
  %25 = tail call ptr @llvm.returnaddress(i32 50)
  br label %return

sw.bb52:                                          ; preds = %entry
  %26 = tail call ptr @llvm.returnaddress(i32 53)
  br label %return

sw.bb53:                                          ; preds = %entry
  %27 = tail call ptr @llvm.returnaddress(i32 54)
  br label %return

sw.bb56:                                          ; preds = %entry
  %28 = tail call ptr @llvm.returnaddress(i32 57)
  br label %return

sw.bb57:                                          ; preds = %entry
  %29 = tail call ptr @llvm.returnaddress(i32 58)
  br label %return

sw.bb60:                                          ; preds = %entry
  %30 = tail call ptr @llvm.returnaddress(i32 61)
  br label %return

sw.bb61:                                          ; preds = %entry
  %31 = tail call ptr @llvm.returnaddress(i32 62)
  br label %return

sw.bb64:                                          ; preds = %entry
  %32 = tail call ptr @llvm.returnaddress(i32 65)
  br label %return

sw.bb65:                                          ; preds = %entry
  %33 = tail call ptr @llvm.returnaddress(i32 66)
  br label %return

sw.bb68:                                          ; preds = %entry
  %34 = tail call ptr @llvm.returnaddress(i32 69)
  br label %return

sw.bb69:                                          ; preds = %entry
  %35 = tail call ptr @llvm.returnaddress(i32 70)
  br label %return

sw.bb72:                                          ; preds = %entry
  %36 = tail call ptr @llvm.returnaddress(i32 73)
  br label %return

sw.bb73:                                          ; preds = %entry
  %37 = tail call ptr @llvm.returnaddress(i32 74)
  br label %return

sw.bb76:                                          ; preds = %entry
  %38 = tail call ptr @llvm.returnaddress(i32 77)
  br label %return

sw.bb77:                                          ; preds = %entry
  %39 = tail call ptr @llvm.returnaddress(i32 78)
  br label %return

sw.bb80:                                          ; preds = %entry
  %40 = tail call ptr @llvm.returnaddress(i32 81)
  br label %return

sw.bb81:                                          ; preds = %entry
  %41 = tail call ptr @llvm.returnaddress(i32 82)
  br label %return

sw.bb84:                                          ; preds = %entry
  %42 = tail call ptr @llvm.returnaddress(i32 85)
  br label %return

sw.bb85:                                          ; preds = %entry
  %43 = tail call ptr @llvm.returnaddress(i32 86)
  br label %return

sw.bb88:                                          ; preds = %entry
  %44 = tail call ptr @llvm.returnaddress(i32 89)
  br label %return

sw.bb89:                                          ; preds = %entry
  %45 = tail call ptr @llvm.returnaddress(i32 90)
  br label %return

sw.bb92:                                          ; preds = %entry
  %46 = tail call ptr @llvm.returnaddress(i32 93)
  br label %return

sw.bb93:                                          ; preds = %entry
  %47 = tail call ptr @llvm.returnaddress(i32 94)
  br label %return

sw.bb96:                                          ; preds = %entry
  %48 = tail call ptr @llvm.returnaddress(i32 97)
  br label %return

sw.bb97:                                          ; preds = %entry
  %49 = tail call ptr @llvm.returnaddress(i32 98)
  br label %return

return:                                           ; preds = %entry, %sw.bb97, %sw.bb96, %sw.bb93, %sw.bb92, %sw.bb89, %sw.bb88, %sw.bb85, %sw.bb84, %sw.bb81, %sw.bb80, %sw.bb77, %sw.bb76, %sw.bb73, %sw.bb72, %sw.bb69, %sw.bb68, %sw.bb65, %sw.bb64, %sw.bb61, %sw.bb60, %sw.bb57, %sw.bb56, %sw.bb53, %sw.bb52, %sw.bb49, %sw.bb48, %sw.bb45, %sw.bb44, %sw.bb41, %sw.bb40, %sw.bb37, %sw.bb36, %sw.bb33, %sw.bb32, %sw.bb29, %sw.bb28, %sw.bb25, %sw.bb24, %sw.bb21, %sw.bb20, %sw.bb17, %sw.bb16, %sw.bb13, %sw.bb12, %sw.bb9, %sw.bb8, %sw.bb5, %sw.bb4, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ %49, %sw.bb97 ], [ %48, %sw.bb96 ], [ %47, %sw.bb93 ], [ %46, %sw.bb92 ], [ %45, %sw.bb89 ], [ %44, %sw.bb88 ], [ %43, %sw.bb85 ], [ %42, %sw.bb84 ], [ %41, %sw.bb81 ], [ %40, %sw.bb80 ], [ %39, %sw.bb77 ], [ %38, %sw.bb76 ], [ %37, %sw.bb73 ], [ %36, %sw.bb72 ], [ %35, %sw.bb69 ], [ %34, %sw.bb68 ], [ %33, %sw.bb65 ], [ %32, %sw.bb64 ], [ %31, %sw.bb61 ], [ %30, %sw.bb60 ], [ %29, %sw.bb57 ], [ %28, %sw.bb56 ], [ %27, %sw.bb53 ], [ %26, %sw.bb52 ], [ %25, %sw.bb49 ], [ %24, %sw.bb48 ], [ %23, %sw.bb45 ], [ %22, %sw.bb44 ], [ %21, %sw.bb41 ], [ %20, %sw.bb40 ], [ %19, %sw.bb37 ], [ %18, %sw.bb36 ], [ %17, %sw.bb33 ], [ %16, %sw.bb32 ], [ %15, %sw.bb29 ], [ %14, %sw.bb28 ], [ %13, %sw.bb25 ], [ %12, %sw.bb24 ], [ %11, %sw.bb21 ], [ %10, %sw.bb20 ], [ %9, %sw.bb17 ], [ %8, %sw.bb16 ], [ %7, %sw.bb13 ], [ %6, %sw.bb12 ], [ %5, %sw.bb9 ], [ %4, %sw.bb8 ], [ %3, %sw.bb5 ], [ %2, %sw.bb4 ], [ %1, %sw.bb1 ], [ %0, %sw.bb ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
