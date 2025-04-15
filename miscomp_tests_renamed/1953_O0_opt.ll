; 108545967149662377916285862147368402025
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/108545967149662377916285862147368402025_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/108545967149662377916285862147368402025.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a_short = type { i8, i16 }
%struct.a_int = type { i8, i32 }
%struct.b_int = type { i16, i32 }
%struct.a_float = type { i8, float }
%struct.b_float = type { i16, float }
%struct.a_double = type { i8, double }
%struct.b_double = type { i16, double }
%struct.c_double = type { i32, double }
%struct.d_double = type { float, double }
%struct.a_ldouble = type { i8, x86_fp80 }
%struct.b_ldouble = type { i16, x86_fp80 }
%struct.c_ldouble = type { i32, x86_fp80 }
%struct.d_ldouble = type { float, x86_fp80 }
%struct.e_ldouble = type { double, x86_fp80 }

@s_c_s = dso_local global { i8, i8, i16 } { i8 97, i8 0, i16 13 }, align 2
@s_c_i = dso_local global { i8, [3 x i8], i32 } { i8 98, [3 x i8] zeroinitializer, i32 14 }, align 4
@s_s_i = dso_local global { i16, [2 x i8], i32 } { i16 15, [2 x i8] zeroinitializer, i32 16 }, align 4
@s_c_f = dso_local global { i8, [3 x i8], float } { i8 99, [3 x i8] zeroinitializer, float 1.700000e+01 }, align 4
@s_s_f = dso_local global { i16, [2 x i8], float } { i16 18, [2 x i8] zeroinitializer, float 1.900000e+01 }, align 4
@s_c_d = dso_local global { i8, [7 x i8], double } { i8 100, [7 x i8] zeroinitializer, double 2.000000e+01 }, align 8
@s_s_d = dso_local global { i16, [6 x i8], double } { i16 21, [6 x i8] zeroinitializer, double 2.200000e+01 }, align 8
@s_i_d = dso_local global { i32, [4 x i8], double } { i32 23, [4 x i8] zeroinitializer, double 2.400000e+01 }, align 8
@s_f_d = dso_local global { float, [4 x i8], double } { float 2.500000e+01, [4 x i8] zeroinitializer, double 2.600000e+01 }, align 8
@s_c_ld = dso_local global { i8, [15 x i8], x86_fp80 } { i8 101, [15 x i8] zeroinitializer, x86_fp80 0xK4003D800000000000000 }, align 16
@s_s_ld = dso_local global { i16, [14 x i8], x86_fp80 } { i16 28, [14 x i8] zeroinitializer, x86_fp80 0xK4003E800000000000000 }, align 16
@s_i_ld = dso_local global { i32, [12 x i8], x86_fp80 } { i32 30, [12 x i8] zeroinitializer, x86_fp80 0xK4003F800000000000000 }, align 16
@s_f_ld = dso_local global { float, [12 x i8], x86_fp80 } { float 3.200000e+01, [12 x i8] zeroinitializer, x86_fp80 0xK40048400000000000000 }, align 16
@s_d_ld = dso_local global { double, [8 x i8], x86_fp80 } { double 3.400000e+01, [8 x i8] zeroinitializer, x86_fp80 0xK40048C00000000000000 }, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @doNothing()
  %0 = load i16, ptr getelementptr inbounds nuw (%struct.a_short, ptr @s_c_s, i32 0, i32 1), align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp ne i32 %conv, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @s_c_i, align 4
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 98
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr getelementptr inbounds nuw (%struct.a_int, ptr @s_c_i, i32 0, i32 1), align 4
  %cmp7 = icmp ne i32 %2, 14
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @abort() #3
  unreachable

if.end10:                                         ; preds = %if.end6
  %3 = load i16, ptr @s_s_i, align 4
  %conv11 = sext i16 %3 to i32
  %cmp12 = icmp ne i32 %conv11, 15
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @abort() #3
  unreachable

if.end15:                                         ; preds = %if.end10
  %4 = load i32, ptr getelementptr inbounds nuw (%struct.b_int, ptr @s_s_i, i32 0, i32 1), align 4
  %cmp16 = icmp ne i32 %4, 16
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @abort() #3
  unreachable

if.end19:                                         ; preds = %if.end15
  %5 = load i8, ptr @s_c_f, align 4
  %conv20 = sext i8 %5 to i32
  %cmp21 = icmp ne i32 %conv20, 99
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @abort() #3
  unreachable

if.end24:                                         ; preds = %if.end19
  %6 = load float, ptr getelementptr inbounds nuw (%struct.a_float, ptr @s_c_f, i32 0, i32 1), align 4
  %conv25 = fpext float %6 to double
  %cmp26 = fcmp une double %conv25, 1.700000e+01
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @abort() #3
  unreachable

if.end29:                                         ; preds = %if.end24
  %7 = load i16, ptr @s_s_f, align 4
  %conv30 = sext i16 %7 to i32
  %cmp31 = icmp ne i32 %conv30, 18
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @abort() #3
  unreachable

if.end34:                                         ; preds = %if.end29
  %8 = load float, ptr getelementptr inbounds nuw (%struct.b_float, ptr @s_s_f, i32 0, i32 1), align 4
  %conv35 = fpext float %8 to double
  %cmp36 = fcmp une double %conv35, 1.900000e+01
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  call void @abort() #3
  unreachable

if.end39:                                         ; preds = %if.end34
  %9 = load i8, ptr @s_c_d, align 8
  %conv40 = sext i8 %9 to i32
  %cmp41 = icmp ne i32 %conv40, 100
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  call void @abort() #3
  unreachable

if.end44:                                         ; preds = %if.end39
  %10 = load double, ptr getelementptr inbounds nuw (%struct.a_double, ptr @s_c_d, i32 0, i32 1), align 8
  %cmp45 = fcmp une double %10, 2.000000e+01
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @abort() #3
  unreachable

if.end48:                                         ; preds = %if.end44
  %11 = load i16, ptr @s_s_d, align 8
  %conv49 = sext i16 %11 to i32
  %cmp50 = icmp ne i32 %conv49, 21
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  call void @abort() #3
  unreachable

if.end53:                                         ; preds = %if.end48
  %12 = load double, ptr getelementptr inbounds nuw (%struct.b_double, ptr @s_s_d, i32 0, i32 1), align 8
  %cmp54 = fcmp une double %12, 2.200000e+01
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  call void @abort() #3
  unreachable

if.end57:                                         ; preds = %if.end53
  %13 = load i32, ptr @s_i_d, align 8
  %cmp58 = icmp ne i32 %13, 23
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  call void @abort() #3
  unreachable

if.end61:                                         ; preds = %if.end57
  %14 = load double, ptr getelementptr inbounds nuw (%struct.c_double, ptr @s_i_d, i32 0, i32 1), align 8
  %cmp62 = fcmp une double %14, 2.400000e+01
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  call void @abort() #3
  unreachable

if.end65:                                         ; preds = %if.end61
  %15 = load float, ptr @s_f_d, align 8
  %conv66 = fpext float %15 to double
  %cmp67 = fcmp une double %conv66, 2.500000e+01
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  call void @abort() #3
  unreachable

if.end70:                                         ; preds = %if.end65
  %16 = load double, ptr getelementptr inbounds nuw (%struct.d_double, ptr @s_f_d, i32 0, i32 1), align 8
  %cmp71 = fcmp une double %16, 2.600000e+01
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end70
  call void @abort() #3
  unreachable

if.end74:                                         ; preds = %if.end70
  %17 = load i8, ptr @s_c_ld, align 16
  %conv75 = sext i8 %17 to i32
  %cmp76 = icmp ne i32 %conv75, 101
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @abort() #3
  unreachable

if.end79:                                         ; preds = %if.end74
  %18 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.a_ldouble, ptr @s_c_ld, i32 0, i32 1), align 16
  %cmp80 = fcmp une x86_fp80 %18, 0xK4003D800000000000000
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end79
  call void @abort() #3
  unreachable

if.end83:                                         ; preds = %if.end79
  %19 = load i16, ptr @s_s_ld, align 16
  %conv84 = sext i16 %19 to i32
  %cmp85 = icmp ne i32 %conv84, 28
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end83
  call void @abort() #3
  unreachable

if.end88:                                         ; preds = %if.end83
  %20 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.b_ldouble, ptr @s_s_ld, i32 0, i32 1), align 16
  %cmp89 = fcmp une x86_fp80 %20, 0xK4003E800000000000000
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  call void @abort() #3
  unreachable

if.end92:                                         ; preds = %if.end88
  %21 = load i32, ptr @s_i_ld, align 16
  %cmp93 = icmp ne i32 %21, 30
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  call void @abort() #3
  unreachable

if.end96:                                         ; preds = %if.end92
  %22 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.c_ldouble, ptr @s_i_ld, i32 0, i32 1), align 16
  %cmp97 = fcmp une x86_fp80 %22, 0xK4003F800000000000000
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end96
  call void @abort() #3
  unreachable

if.end100:                                        ; preds = %if.end96
  %23 = load float, ptr @s_f_ld, align 16
  %conv101 = fpext float %23 to double
  %cmp102 = fcmp une double %conv101, 3.200000e+01
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end100
  call void @abort() #3
  unreachable

if.end105:                                        ; preds = %if.end100
  %24 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.d_ldouble, ptr @s_f_ld, i32 0, i32 1), align 16
  %cmp106 = fcmp une x86_fp80 %24, 0xK40048400000000000000
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end105
  call void @abort() #3
  unreachable

if.end109:                                        ; preds = %if.end105
  %25 = load double, ptr @s_d_ld, align 16
  %cmp110 = fcmp une double %25, 3.400000e+01
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end109
  call void @abort() #3
  unreachable

if.end113:                                        ; preds = %if.end109
  %26 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.e_ldouble, ptr @s_d_ld, i32 0, i32 1), align 16
  %cmp114 = fcmp une x86_fp80 %26, 0xK40048C00000000000000
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end113
  call void @abort() #3
  unreachable

if.end117:                                        ; preds = %if.end113
  ret i32 0
}

declare i32 @doNothing(...) #1

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
