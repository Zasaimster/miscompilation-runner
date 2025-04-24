; 154151367413366652376992787909240111296
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154151367413366652376992787909240111296.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154151367413366652376992787909240111296.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local local_unnamed_addr global x86_fp80 0xK4001A000000000000000, align 16
@U = dso_local local_unnamed_addr global x86_fp80 0xK3FFF8000000000000000, align 16
@Y2 = dso_local local_unnamed_addr global x86_fp80 0xK4002B000000000000000, align 16
@Y1 = dso_local local_unnamed_addr global x86_fp80 0xK40038800000000000000, align 16
@X = dso_local local_unnamed_addr global x86_fp80 0xK00000000000000000000, align 16
@Y = dso_local local_unnamed_addr global x86_fp80 0xK00000000000000000000, align 16
@Z = dso_local local_unnamed_addr global x86_fp80 0xK00000000000000000000, align 16
@T = dso_local local_unnamed_addr global x86_fp80 0xK00000000000000000000, align 16
@R = dso_local local_unnamed_addr global x86_fp80 0xK00000000000000000000, align 16
@S = dso_local local_unnamed_addr global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load x86_fp80, ptr @C, align 16, !tbaa !5
  %1 = load x86_fp80, ptr @U, align 16, !tbaa !5
  %add = fadd x86_fp80 %0, %1
  %2 = load x86_fp80, ptr @Y2, align 16, !tbaa !5
  %mul = fmul x86_fp80 %add, %2
  store x86_fp80 %mul, ptr @X, align 16, !tbaa !5
  %sub = fsub x86_fp80 %0, %1
  %sub1 = fsub x86_fp80 %sub, %1
  store x86_fp80 %sub1, ptr @Y, align 16, !tbaa !5
  %add3 = fadd x86_fp80 %1, %add
  store x86_fp80 %add3, ptr @Z, align 16, !tbaa !5
  %3 = load x86_fp80, ptr @Y1, align 16, !tbaa !5
  %mul5 = fmul x86_fp80 %sub, %3
  store x86_fp80 %mul5, ptr @T, align 16, !tbaa !5
  %add6 = fadd x86_fp80 %1, %add3
  %sub7 = fsub x86_fp80 %mul, %add6
  store x86_fp80 %sub7, ptr @X, align 16, !tbaa !5
  %mul8 = fmul x86_fp80 %sub1, %3
  store x86_fp80 %mul8, ptr @R, align 16, !tbaa !5
  %mul9 = fmul x86_fp80 %2, %add3
  store x86_fp80 %mul9, ptr @S, align 16, !tbaa !5
  %sub10 = fsub x86_fp80 %mul5, %sub1
  store x86_fp80 %sub10, ptr @T, align 16, !tbaa !5
  %sub11 = fsub x86_fp80 %1, %sub1
  %add12 = fadd x86_fp80 %sub11, %mul8
  store x86_fp80 %add12, ptr @Y, align 16, !tbaa !5
  %add14 = fadd x86_fp80 %1, %add6
  %sub15 = fsub x86_fp80 %mul9, %add14
  store x86_fp80 %sub15, ptr @Z, align 16, !tbaa !5
  %add16 = fadd x86_fp80 %1, %2
  %mul17 = fmul x86_fp80 %add16, %3
  store x86_fp80 %mul17, ptr @R, align 16, !tbaa !5
  %mul18 = fmul x86_fp80 %2, %3
  store x86_fp80 %mul18, ptr @Y1, align 16, !tbaa !5
  %sub19 = fsub x86_fp80 %mul17, %2
  store x86_fp80 %sub19, ptr @R, align 16, !tbaa !5
  %sub20 = fadd x86_fp80 %mul18, 0xKBFFE8000000000000000
  store x86_fp80 %sub20, ptr @Y1, align 16, !tbaa !5
  %cmp = fcmp olt x86_fp80 %sub15, 0xK00000000000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store x86_fp80 0xK4001A000000000000000, ptr @Z, align 16, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #1

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
