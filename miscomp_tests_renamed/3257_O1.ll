; 156985733289597211705714660006916502547
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/156985733289597211705714660006916502547.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/156985733289597211705714660006916502547.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_c_s = dso_local local_unnamed_addr global { i8, i8, i16 } { i8 97, i8 0, i16 13 }, align 2
@s_c_i = dso_local local_unnamed_addr global { i8, [3 x i8], i32 } { i8 98, [3 x i8] zeroinitializer, i32 14 }, align 4
@s_s_i = dso_local local_unnamed_addr global { i16, [2 x i8], i32 } { i16 15, [2 x i8] zeroinitializer, i32 16 }, align 4
@s_c_f = dso_local local_unnamed_addr global { i8, [3 x i8], float } { i8 99, [3 x i8] zeroinitializer, float 1.700000e+01 }, align 4
@s_s_f = dso_local local_unnamed_addr global { i16, [2 x i8], float } { i16 18, [2 x i8] zeroinitializer, float 1.900000e+01 }, align 4
@s_c_d = dso_local local_unnamed_addr global { i8, [7 x i8], double } { i8 100, [7 x i8] zeroinitializer, double 2.000000e+01 }, align 8
@s_s_d = dso_local local_unnamed_addr global { i16, [6 x i8], double } { i16 21, [6 x i8] zeroinitializer, double 2.200000e+01 }, align 8
@s_i_d = dso_local local_unnamed_addr global { i32, [4 x i8], double } { i32 23, [4 x i8] zeroinitializer, double 2.400000e+01 }, align 8
@s_f_d = dso_local local_unnamed_addr global { float, [4 x i8], double } { float 2.500000e+01, [4 x i8] zeroinitializer, double 2.600000e+01 }, align 8
@s_c_ld = dso_local local_unnamed_addr global { i8, [15 x i8], x86_fp80 } { i8 101, [15 x i8] zeroinitializer, x86_fp80 0xK4003D800000000000000 }, align 16
@s_s_ld = dso_local local_unnamed_addr global { i16, [14 x i8], x86_fp80 } { i16 28, [14 x i8] zeroinitializer, x86_fp80 0xK4003E800000000000000 }, align 16
@s_i_ld = dso_local local_unnamed_addr global { i32, [12 x i8], x86_fp80 } { i32 30, [12 x i8] zeroinitializer, x86_fp80 0xK4003F800000000000000 }, align 16
@s_f_ld = dso_local local_unnamed_addr global { float, [12 x i8], x86_fp80 } { float 3.200000e+01, [12 x i8] zeroinitializer, x86_fp80 0xK40048400000000000000 }, align 16
@s_d_ld = dso_local local_unnamed_addr global { double, [8 x i8], x86_fp80 } { double 3.400000e+01, [8 x i8] zeroinitializer, x86_fp80 0xK40048C00000000000000 }, align 16

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr @s_c_s, align 2, !tbaa !5
  %cmp.not = icmp eq i8 %0, 97
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"a_short", !7, i64 0, !9, i64 2}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"short", !7, i64 0}
