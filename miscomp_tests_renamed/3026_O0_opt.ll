; 116449417232595047951815138254260623597
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116449417232595047951815138254260623597_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116449417232595047951815138254260623597.c"
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

@s_c_s = dso_local global { i8, i8, i16 } { i8 0, i8 0, i16 13 }, align 2
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
  %0 = load i8, ptr @s_c_s, align 2
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 97
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i16, ptr getelementptr inbounds nuw (%struct.a_short, ptr @s_c_s, i32 0, i32 1), align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 13
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end6:                                          ; preds = %if.end
  %2 = load i8, ptr @s_c_i, align 4
  %conv7 = sext i8 %2 to i32
  %cmp8 = icmp ne i32 %conv7, 98
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @abort() #2
  unreachable

if.end11:                                         ; preds = %if.end6
  %3 = load i32, ptr getelementptr inbounds nuw (%struct.a_int, ptr @s_c_i, i32 0, i32 1), align 4
  %cmp12 = icmp ne i32 %3, 14
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @abort() #2
  unreachable

if.end15:                                         ; preds = %if.end11
  %4 = load i16, ptr @s_s_i, align 4
  %conv16 = sext i16 %4 to i32
  %cmp17 = icmp ne i32 %conv16, 15
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @abort() #2
  unreachable

if.end20:                                         ; preds = %if.end15
  %5 = load i32, ptr getelementptr inbounds nuw (%struct.b_int, ptr @s_s_i, i32 0, i32 1), align 4
  %cmp21 = icmp ne i32 %5, 16
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @abort() #2
  unreachable

if.end24:                                         ; preds = %if.end20
  %6 = load i8, ptr @s_c_f, align 4
  %conv25 = sext i8 %6 to i32
  %cmp26 = icmp ne i32 %conv25, 99
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @abort() #2
  unreachable

if.end29:                                         ; preds = %if.end24
  %7 = load float, ptr getelementptr inbounds nuw (%struct.a_float, ptr @s_c_f, i32 0, i32 1), align 4
  %conv30 = fpext float %7 to double
  %cmp31 = fcmp une double %conv30, 1.700000e+01
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @abort() #2
  unreachable

if.end34:                                         ; preds = %if.end29
  %8 = load i16, ptr @s_s_f, align 4
  %conv35 = sext i16 %8 to i32
  %cmp36 = icmp ne i32 %conv35, 18
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  call void @abort() #2
  unreachable

if.end39:                                         ; preds = %if.end34
  %9 = load float, ptr getelementptr inbounds nuw (%struct.b_float, ptr @s_s_f, i32 0, i32 1), align 4
  %conv40 = fpext float %9 to double
  %cmp41 = fcmp une double %conv40, 1.900000e+01
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  call void @abort() #2
  unreachable

if.end44:                                         ; preds = %if.end39
  %10 = load i8, ptr @s_c_d, align 8
  %conv45 = sext i8 %10 to i32
  %cmp46 = icmp ne i32 %conv45, 100
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  call void @abort() #2
  unreachable

if.end49:                                         ; preds = %if.end44
  %11 = load double, ptr getelementptr inbounds nuw (%struct.a_double, ptr @s_c_d, i32 0, i32 1), align 8
  %cmp50 = fcmp une double %11, 2.000000e+01
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  call void @abort() #2
  unreachable

if.end53:                                         ; preds = %if.end49
  %12 = load i16, ptr @s_s_d, align 8
  %conv54 = sext i16 %12 to i32
  %cmp55 = icmp ne i32 %conv54, 21
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end53
  call void @abort() #2
  unreachable

if.end58:                                         ; preds = %if.end53
  %13 = load double, ptr getelementptr inbounds nuw (%struct.b_double, ptr @s_s_d, i32 0, i32 1), align 8
  %cmp59 = fcmp une double %13, 2.200000e+01
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end58
  call void @abort() #2
  unreachable

if.end62:                                         ; preds = %if.end58
  %14 = load i32, ptr @s_i_d, align 8
  %cmp63 = icmp ne i32 %14, 23
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  call void @abort() #2
  unreachable

if.end66:                                         ; preds = %if.end62
  %15 = load double, ptr getelementptr inbounds nuw (%struct.c_double, ptr @s_i_d, i32 0, i32 1), align 8
  %cmp67 = fcmp une double %15, 2.400000e+01
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @abort() #2
  unreachable

if.end70:                                         ; preds = %if.end66
  %16 = load float, ptr @s_f_d, align 8
  %conv71 = fpext float %16 to double
  %cmp72 = fcmp une double %conv71, 2.500000e+01
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  call void @abort() #2
  unreachable

if.end75:                                         ; preds = %if.end70
  %17 = load double, ptr getelementptr inbounds nuw (%struct.d_double, ptr @s_f_d, i32 0, i32 1), align 8
  %cmp76 = fcmp une double %17, 2.600000e+01
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end75
  call void @abort() #2
  unreachable

if.end79:                                         ; preds = %if.end75
  %18 = load i8, ptr @s_c_ld, align 16
  %conv80 = sext i8 %18 to i32
  %cmp81 = icmp ne i32 %conv80, 101
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end79
  call void @abort() #2
  unreachable

if.end84:                                         ; preds = %if.end79
  %19 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.a_ldouble, ptr @s_c_ld, i32 0, i32 1), align 16
  %cmp85 = fcmp une x86_fp80 %19, 0xK4003D800000000000000
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  call void @abort() #2
  unreachable

if.end88:                                         ; preds = %if.end84
  %20 = load i16, ptr @s_s_ld, align 16
  %conv89 = sext i16 %20 to i32
  %cmp90 = icmp ne i32 %conv89, 28
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end88
  call void @abort() #2
  unreachable

if.end93:                                         ; preds = %if.end88
  %21 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.b_ldouble, ptr @s_s_ld, i32 0, i32 1), align 16
  %cmp94 = fcmp une x86_fp80 %21, 0xK4003E800000000000000
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  call void @abort() #2
  unreachable

if.end97:                                         ; preds = %if.end93
  %22 = load i32, ptr @s_i_ld, align 16
  %cmp98 = icmp ne i32 %22, 30
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end97
  call void @abort() #2
  unreachable

if.end101:                                        ; preds = %if.end97
  %23 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.c_ldouble, ptr @s_i_ld, i32 0, i32 1), align 16
  %cmp102 = fcmp une x86_fp80 %23, 0xK4003F800000000000000
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end101
  call void @abort() #2
  unreachable

if.end105:                                        ; preds = %if.end101
  %24 = load float, ptr @s_f_ld, align 16
  %conv106 = fpext float %24 to double
  %cmp107 = fcmp une double %conv106, 3.200000e+01
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end105
  call void @abort() #2
  unreachable

if.end110:                                        ; preds = %if.end105
  %25 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.d_ldouble, ptr @s_f_ld, i32 0, i32 1), align 16
  %cmp111 = fcmp une x86_fp80 %25, 0xK40048400000000000000
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end110
  call void @abort() #2
  unreachable

if.end114:                                        ; preds = %if.end110
  %26 = load double, ptr @s_d_ld, align 16
  %cmp115 = fcmp une double %26, 3.400000e+01
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end114
  call void @abort() #2
  unreachable

if.end118:                                        ; preds = %if.end114
  %27 = load x86_fp80, ptr getelementptr inbounds nuw (%struct.e_ldouble, ptr @s_d_ld, i32 0, i32 1), align 16
  %cmp119 = fcmp une x86_fp80 %27, 0xK40048C00000000000000
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end118
  call void @abort() #2
  unreachable

if.end122:                                        ; preds = %if.end118
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
