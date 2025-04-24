; 105359808467204169387423632354514610113
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/105359808467204169387423632354514610113_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/105359808467204169387423632354514610113.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local local_unnamed_addr global x86_fp80 0xK4001A000000000000000, align 16
@U = dso_local local_unnamed_addr global x86_fp80 0xK3FFF8000000000000000, align 16
@Y2 = dso_local local_unnamed_addr global x86_fp80 0xK4002B000000000000000, align 16
@Y1 = dso_local local_unnamed_addr global x86_fp80 0xK40038800000000000000, align 16
@X = dso_local local_unnamed_addr global x86_fp80 0xK00000000000000000000, align 16
@.str = private unnamed_addr constant [16 x i8] c"Value of a: %d\0A\00", align 1
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
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, x86_fp80 noundef %mul)
  %3 = load x86_fp80, ptr @C, align 16, !tbaa !5
  %4 = load x86_fp80, ptr @U, align 16, !tbaa !5
  %sub = fsub x86_fp80 %3, %4
  %sub1 = fsub x86_fp80 %sub, %4
  store x86_fp80 %sub1, ptr @Y, align 16, !tbaa !5
  %add2 = fadd x86_fp80 %3, %4
  %add3 = fadd x86_fp80 %4, %add2
  store x86_fp80 %add3, ptr @Z, align 16, !tbaa !5
  %5 = load x86_fp80, ptr @Y1, align 16, !tbaa !5
  %mul5 = fmul x86_fp80 %sub, %5
  store x86_fp80 %mul5, ptr @T, align 16, !tbaa !5
  %6 = load x86_fp80, ptr @X, align 16, !tbaa !5
  %add6 = fadd x86_fp80 %4, %add3
  %sub7 = fsub x86_fp80 %6, %add6
  store x86_fp80 %sub7, ptr @X, align 16, !tbaa !5
  %mul8 = fmul x86_fp80 %sub1, %5
  store x86_fp80 %mul8, ptr @R, align 16, !tbaa !5
  %7 = load x86_fp80, ptr @Y2, align 16, !tbaa !5
  %mul9 = fmul x86_fp80 %add3, %7
  store x86_fp80 %mul9, ptr @S, align 16, !tbaa !5
  %sub10 = fsub x86_fp80 %mul5, %sub1
  store x86_fp80 %sub10, ptr @T, align 16, !tbaa !5
  %sub11 = fsub x86_fp80 %4, %sub1
  %add12 = fadd x86_fp80 %sub11, %mul8
  store x86_fp80 %add12, ptr @Y, align 16, !tbaa !5
  %add14 = fadd x86_fp80 %4, %add6
  %sub15 = fsub x86_fp80 %mul9, %add14
  store x86_fp80 %sub15, ptr @Z, align 16, !tbaa !5
  %add16 = fadd x86_fp80 %4, %7
  %mul17 = fmul x86_fp80 %5, %add16
  store x86_fp80 %mul17, ptr @R, align 16, !tbaa !5
  %mul18 = fmul x86_fp80 %5, %7
  store x86_fp80 %mul18, ptr @Y1, align 16, !tbaa !5
  %sub19 = fsub x86_fp80 %mul17, %7
  store x86_fp80 %sub19, ptr @R, align 16, !tbaa !5
  %sub20 = fadd x86_fp80 %mul18, 0xKBFFE8000000000000000
  store x86_fp80 %sub20, ptr @Y1, align 16, !tbaa !5
  %cmp = fcmp une x86_fp80 %sub15, 0xK40058800000000000000
  %cmp21 = fcmp une x86_fp80 %add12, 0xK4004C400000000000000
  %or.cond = select i1 %cmp, i1 true, i1 %cmp21
  %cmp23 = fcmp une x86_fp80 %sub7, 0xK4004E800000000000000
  %or.cond34 = select i1 %or.cond, i1 true, i1 %cmp23
  %cmp25 = fcmp une x86_fp80 %sub20, 0xK4006BA80000000000000
  %or.cond35 = select i1 %or.cond34, i1 true, i1 %cmp25
  %cmp27 = fcmp une x86_fp80 %sub19, 0xK4006C100000000000000
  %or.cond36 = select i1 %or.cond35, i1 true, i1 %cmp27
  %cmp29 = fcmp une x86_fp80 %mul9, 0xK40059A00000000000000
  %or.cond37 = select i1 %or.cond36, i1 true, i1 %cmp29
  %cmp31 = fcmp une x86_fp80 %sub10, 0xK40058200000000000000
  %or.cond38 = select i1 %or.cond37, i1 true, i1 %cmp31
  %cmp33 = fcmp une x86_fp80 %7, 0xK4002B000000000000000
  %or.cond39 = select i1 %or.cond38, i1 true, i1 %cmp33
  br i1 %or.cond39, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
