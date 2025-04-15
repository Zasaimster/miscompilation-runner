; 108545967149662377916285862147368402025
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/108545967149662377916285862147368402025.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/108545967149662377916285862147368402025.c"
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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @doNothing() #3
  %0 = load i16, ptr getelementptr inbounds nuw (i8, ptr @s_c_s, i64 2), align 2, !tbaa !5
  %cmp.not = icmp eq i16 %0, 13
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @s_c_i, align 4, !tbaa !10
  %cmp3.not = icmp eq i8 %1, 98
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @s_c_i, i64 4), align 4, !tbaa !13
  %cmp7.not = icmp eq i32 %2, 14
  br i1 %cmp7.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  tail call void @abort() #4
  unreachable

if.end10:                                         ; preds = %if.end6
  %3 = load i16, ptr @s_s_i, align 4, !tbaa !14
  %cmp12.not = icmp eq i16 %3, 15
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  tail call void @abort() #4
  unreachable

if.end15:                                         ; preds = %if.end10
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @s_s_i, i64 4), align 4, !tbaa !16
  %cmp16.not = icmp eq i32 %4, 16
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  tail call void @abort() #4
  unreachable

if.end19:                                         ; preds = %if.end15
  %5 = load i8, ptr @s_c_f, align 4, !tbaa !17
  %cmp21.not = icmp eq i8 %5, 99
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  tail call void @abort() #4
  unreachable

if.end24:                                         ; preds = %if.end19
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @s_c_f, i64 4), align 4, !tbaa !20
  %cmp26 = fcmp une float %6, 1.700000e+01
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  tail call void @abort() #4
  unreachable

if.end29:                                         ; preds = %if.end24
  %7 = load i16, ptr @s_s_f, align 4, !tbaa !21
  %cmp31.not = icmp eq i16 %7, 18
  br i1 %cmp31.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end29
  tail call void @abort() #4
  unreachable

if.end34:                                         ; preds = %if.end29
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @s_s_f, i64 4), align 4, !tbaa !23
  %cmp36 = fcmp une float %8, 1.900000e+01
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  tail call void @abort() #4
  unreachable

if.end39:                                         ; preds = %if.end34
  %9 = load i8, ptr @s_c_d, align 8, !tbaa !24
  %cmp41.not = icmp eq i8 %9, 100
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end39
  tail call void @abort() #4
  unreachable

if.end44:                                         ; preds = %if.end39
  %10 = load double, ptr getelementptr inbounds nuw (i8, ptr @s_c_d, i64 8), align 8, !tbaa !27
  %cmp45 = fcmp une double %10, 2.000000e+01
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  tail call void @abort() #4
  unreachable

if.end48:                                         ; preds = %if.end44
  %11 = load i16, ptr @s_s_d, align 8, !tbaa !28
  %cmp50.not = icmp eq i16 %11, 21
  br i1 %cmp50.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end48
  tail call void @abort() #4
  unreachable

if.end53:                                         ; preds = %if.end48
  %12 = load double, ptr getelementptr inbounds nuw (i8, ptr @s_s_d, i64 8), align 8, !tbaa !30
  %cmp54 = fcmp une double %12, 2.200000e+01
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  tail call void @abort() #4
  unreachable

if.end57:                                         ; preds = %if.end53
  %13 = load i32, ptr @s_i_d, align 8, !tbaa !31
  %cmp58.not = icmp eq i32 %13, 23
  br i1 %cmp58.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end57
  tail call void @abort() #4
  unreachable

if.end61:                                         ; preds = %if.end57
  %14 = load double, ptr getelementptr inbounds nuw (i8, ptr @s_i_d, i64 8), align 8, !tbaa !33
  %cmp62 = fcmp une double %14, 2.400000e+01
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  tail call void @abort() #4
  unreachable

if.end65:                                         ; preds = %if.end61
  %15 = load float, ptr @s_f_d, align 8, !tbaa !34
  %cmp67 = fcmp une float %15, 2.500000e+01
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  tail call void @abort() #4
  unreachable

if.end70:                                         ; preds = %if.end65
  %16 = load double, ptr getelementptr inbounds nuw (i8, ptr @s_f_d, i64 8), align 8, !tbaa !36
  %cmp71 = fcmp une double %16, 2.600000e+01
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end70
  tail call void @abort() #4
  unreachable

if.end74:                                         ; preds = %if.end70
  %17 = load i8, ptr @s_c_ld, align 16, !tbaa !37
  %cmp76.not = icmp eq i8 %17, 101
  br i1 %cmp76.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.end74
  tail call void @abort() #4
  unreachable

if.end79:                                         ; preds = %if.end74
  %18 = load x86_fp80, ptr getelementptr inbounds nuw (i8, ptr @s_c_ld, i64 16), align 16, !tbaa !40
  %cmp80 = fcmp une x86_fp80 %18, 0xK4003D800000000000000
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end79
  tail call void @abort() #4
  unreachable

if.end83:                                         ; preds = %if.end79
  %19 = load i16, ptr @s_s_ld, align 16, !tbaa !41
  %cmp85.not = icmp eq i16 %19, 28
  br i1 %cmp85.not, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.end83
  tail call void @abort() #4
  unreachable

if.end88:                                         ; preds = %if.end83
  %20 = load x86_fp80, ptr getelementptr inbounds nuw (i8, ptr @s_s_ld, i64 16), align 16, !tbaa !43
  %cmp89 = fcmp une x86_fp80 %20, 0xK4003E800000000000000
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  tail call void @abort() #4
  unreachable

if.end92:                                         ; preds = %if.end88
  %21 = load i32, ptr @s_i_ld, align 16, !tbaa !44
  %cmp93.not = icmp eq i32 %21, 30
  br i1 %cmp93.not, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.end92
  tail call void @abort() #4
  unreachable

if.end96:                                         ; preds = %if.end92
  %22 = load x86_fp80, ptr getelementptr inbounds nuw (i8, ptr @s_i_ld, i64 16), align 16, !tbaa !46
  %cmp97 = fcmp une x86_fp80 %22, 0xK4003F800000000000000
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  tail call void @abort() #4
  unreachable

if.end100:                                        ; preds = %if.end96
  %23 = load float, ptr @s_f_ld, align 16, !tbaa !47
  %cmp102 = fcmp une float %23, 3.200000e+01
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end100
  tail call void @abort() #4
  unreachable

if.end105:                                        ; preds = %if.end100
  %24 = load x86_fp80, ptr getelementptr inbounds nuw (i8, ptr @s_f_ld, i64 16), align 16, !tbaa !49
  %cmp106 = fcmp une x86_fp80 %24, 0xK40048400000000000000
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end105
  tail call void @abort() #4
  unreachable

if.end109:                                        ; preds = %if.end105
  %25 = load double, ptr @s_d_ld, align 16, !tbaa !50
  %cmp110 = fcmp une double %25, 3.400000e+01
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end109
  tail call void @abort() #4
  unreachable

if.end113:                                        ; preds = %if.end109
  %26 = load x86_fp80, ptr getelementptr inbounds nuw (i8, ptr @s_d_ld, i64 16), align 16, !tbaa !52
  %cmp114 = fcmp une x86_fp80 %26, 0xK40048C00000000000000
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end113
  tail call void @abort() #4
  unreachable

if.end117:                                        ; preds = %if.end113
  ret i32 0
}

declare i32 @doNothing(...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !9, i64 2}
!6 = !{!"a_short", !7, i64 0, !9, i64 2}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"short", !7, i64 0}
!10 = !{!11, !7, i64 0}
!11 = !{!"a_int", !7, i64 0, !12, i64 4}
!12 = !{!"int", !7, i64 0}
!13 = !{!11, !12, i64 4}
!14 = !{!15, !9, i64 0}
!15 = !{!"b_int", !9, i64 0, !12, i64 4}
!16 = !{!15, !12, i64 4}
!17 = !{!18, !7, i64 0}
!18 = !{!"a_float", !7, i64 0, !19, i64 4}
!19 = !{!"float", !7, i64 0}
!20 = !{!18, !19, i64 4}
!21 = !{!22, !9, i64 0}
!22 = !{!"b_float", !9, i64 0, !19, i64 4}
!23 = !{!22, !19, i64 4}
!24 = !{!25, !7, i64 0}
!25 = !{!"a_double", !7, i64 0, !26, i64 8}
!26 = !{!"double", !7, i64 0}
!27 = !{!25, !26, i64 8}
!28 = !{!29, !9, i64 0}
!29 = !{!"b_double", !9, i64 0, !26, i64 8}
!30 = !{!29, !26, i64 8}
!31 = !{!32, !12, i64 0}
!32 = !{!"c_double", !12, i64 0, !26, i64 8}
!33 = !{!32, !26, i64 8}
!34 = !{!35, !19, i64 0}
!35 = !{!"d_double", !19, i64 0, !26, i64 8}
!36 = !{!35, !26, i64 8}
!37 = !{!38, !7, i64 0}
!38 = !{!"a_ldouble", !7, i64 0, !39, i64 16}
!39 = !{!"long double", !7, i64 0}
!40 = !{!38, !39, i64 16}
!41 = !{!42, !9, i64 0}
!42 = !{!"b_ldouble", !9, i64 0, !39, i64 16}
!43 = !{!42, !39, i64 16}
!44 = !{!45, !12, i64 0}
!45 = !{!"c_ldouble", !12, i64 0, !39, i64 16}
!46 = !{!45, !39, i64 16}
!47 = !{!48, !19, i64 0}
!48 = !{!"d_ldouble", !19, i64 0, !39, i64 16}
!49 = !{!48, !39, i64 16}
!50 = !{!51, !26, i64 0}
!51 = !{!"e_ldouble", !26, i64 0, !39, i64 16}
!52 = !{!51, !39, i64 16}
