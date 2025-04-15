; 153875624916300545482595998758406115200
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153875624916300545482595998758406115200.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153875624916300545482595998758406115200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i0 = dso_local global i32 0, align 4
@ca = dso_local constant [2 x [3 x i8]] [[3 x i8] c"12\00", [3 x i8] zeroinitializer], align 1
@cb = dso_local constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"4\00\00"], align 1
@va = dso_local global [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] zeroinitializer], align 1
@vb = dso_local global [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"45\00"], align 1
@.str = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@s = dso_local global ptr @.str, align 8
@pca = dso_local global ptr @ca, align 8
@pcb = dso_local global ptr @cb, align 8
@pva = dso_local global ptr @va, align 8
@pvb = dso_local global ptr @vb, align 8
@nfails = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__const.test_binary_cond_expr_local.lca = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"12\00", [3 x i8] zeroinitializer], align 1
@__const.test_binary_cond_expr_local.lcb = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"4\00\00"], align 1
@__const.test_binary_cond_expr_local.lva = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] zeroinitializer], align 1
@__const.test_binary_cond_expr_local.lvb = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"45\00"], align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1234\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  call void @test_binary_cond_expr_global()
  call void @test_binary_cond_expr_local()
  call void @test_ternary_cond_expr()
  call void @test_binary_cond_expr_arrayptr()
  %0 = load i32, ptr @nfails, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_binary_cond_expr_global() #0 {
entry:
  %0 = load volatile i32, ptr @i0, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.1, ptr @ca
  %call = call i32 (ptr, i32, ...) @A(ptr noundef %cond, i32 noundef 2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_binary_cond_expr_local() #0 {
entry:
  %lca = alloca [2 x [3 x i8]], align 1
  %lcb = alloca [2 x [3 x i8]], align 1
  %lva = alloca [2 x [3 x i8]], align 1
  %lvb = alloca [2 x [3 x i8]], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %lca, ptr align 1 @__const.test_binary_cond_expr_local.lca, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %lcb, ptr align 1 @__const.test_binary_cond_expr_local.lcb, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %lva, ptr align 1 @__const.test_binary_cond_expr_local.lva, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %lvb, ptr align 1 @__const.test_binary_cond_expr_local.lvb, i64 6, i1 false)
  %0 = load volatile i32, ptr @i0, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x [3 x i8]], ptr %lca, i64 0, i64 0
  %arraydecay = getelementptr inbounds [3 x i8], ptr %arrayidx, i64 0, i64 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @.str.1, %cond.true ], [ %arraydecay, %cond.false ]
  %call = call i32 (ptr, i32, ...) @A(ptr noundef %cond, i32 noundef 2)
  %1 = load volatile i32, ptr @i0, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %arrayidx3 = getelementptr inbounds [2 x [3 x i8]], ptr %lca, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [3 x i8], ptr %arrayidx3, i64 0, i64 0
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi ptr [ %arraydecay4, %cond.true2 ], [ @.str.2, %cond.false5 ]
  %call8 = call i32 (ptr, i32, ...) @A(ptr noundef %cond7, i32 noundef 3)
  %2 = load volatile i32, ptr @i0, align 4
  %tobool9 = icmp ne i32 %2, 0
  br i1 %tobool9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %cond.end6
  br label %cond.end14

cond.false11:                                     ; preds = %cond.end6
  %arrayidx12 = getelementptr inbounds [2 x [3 x i8]], ptr %lcb, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [3 x i8], ptr %arrayidx12, i64 0, i64 0
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false11, %cond.true10
  %cond15 = phi ptr [ @.str.1, %cond.true10 ], [ %arraydecay13, %cond.false11 ]
  %call16 = call i32 (ptr, i32, ...) @A(ptr noundef %cond15, i32 noundef 4)
  %3 = load volatile i32, ptr @i0, align 4
  %tobool17 = icmp ne i32 %3, 0
  br i1 %tobool17, label %cond.true18, label %cond.false21

cond.true18:                                      ; preds = %cond.end14
  %arrayidx19 = getelementptr inbounds [2 x [3 x i8]], ptr %lcb, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [3 x i8], ptr %arrayidx19, i64 0, i64 0
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end14
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.true18
  %cond23 = phi ptr [ %arraydecay20, %cond.true18 ], [ @.str.3, %cond.false21 ]
  %call24 = call i32 (ptr, i32, ...) @A(ptr noundef %cond23, i32 noundef 2)
  %4 = load volatile i32, ptr @i0, align 4
  %tobool25 = icmp ne i32 %4, 0
  br i1 %tobool25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.end22
  br label %cond.end30

cond.false27:                                     ; preds = %cond.end22
  %arrayidx28 = getelementptr inbounds [2 x [3 x i8]], ptr %lva, i64 0, i64 0
  %arraydecay29 = getelementptr inbounds [3 x i8], ptr %arrayidx28, i64 0, i64 0
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false27, %cond.true26
  %cond31 = phi ptr [ @.str.1, %cond.true26 ], [ %arraydecay29, %cond.false27 ]
  %call32 = call i32 (ptr, i32, ...) @A(ptr noundef %cond31, i32 noundef 3)
  %5 = load volatile i32, ptr @i0, align 4
  %tobool33 = icmp ne i32 %5, 0
  br i1 %tobool33, label %cond.true34, label %cond.false37

cond.true34:                                      ; preds = %cond.end30
  %arrayidx35 = getelementptr inbounds [2 x [3 x i8]], ptr %lva, i64 0, i64 0
  %arraydecay36 = getelementptr inbounds [3 x i8], ptr %arrayidx35, i64 0, i64 0
  br label %cond.end38

cond.false37:                                     ; preds = %cond.end30
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true34
  %cond39 = phi ptr [ %arraydecay36, %cond.true34 ], [ @.str.4, %cond.false37 ]
  %call40 = call i32 (ptr, i32, ...) @A(ptr noundef %cond39, i32 noundef 4)
  %6 = load volatile i32, ptr @i0, align 4
  %tobool41 = icmp ne i32 %6, 0
  br i1 %tobool41, label %cond.true42, label %cond.false43

cond.true42:                                      ; preds = %cond.end38
  br label %cond.end46

cond.false43:                                     ; preds = %cond.end38
  %arrayidx44 = getelementptr inbounds [2 x [3 x i8]], ptr %lvb, i64 0, i64 0
  %arraydecay45 = getelementptr inbounds [3 x i8], ptr %arrayidx44, i64 0, i64 0
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false43, %cond.true42
  %cond47 = phi ptr [ @.str.1, %cond.true42 ], [ %arraydecay45, %cond.false43 ]
  %call48 = call i32 (ptr, i32, ...) @A(ptr noundef %cond47, i32 noundef 5)
  %7 = load volatile i32, ptr @i0, align 4
  %tobool49 = icmp ne i32 %7, 0
  br i1 %tobool49, label %cond.true50, label %cond.false53

cond.true50:                                      ; preds = %cond.end46
  %arrayidx51 = getelementptr inbounds [2 x [3 x i8]], ptr %lvb, i64 0, i64 0
  %arraydecay52 = getelementptr inbounds [3 x i8], ptr %arrayidx51, i64 0, i64 0
  br label %cond.end54

cond.false53:                                     ; preds = %cond.end46
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true50
  %cond55 = phi ptr [ %arraydecay52, %cond.true50 ], [ @.str.3, %cond.false53 ]
  %call56 = call i32 (ptr, i32, ...) @A(ptr noundef %cond55, i32 noundef 2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_ternary_cond_expr() #0 {
entry:
  %0 = load volatile i32, ptr @i0, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr @s, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load volatile i32, ptr @i0, align 4
  %cmp1 = icmp eq i32 %2, 1
  %3 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, ptr @vb, ptr @.str.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi ptr [ %1, %cond.true ], [ %cond, %cond.false ]
  %call = call i32 (ptr, i32, ...) @A(ptr noundef %cond2, i32 noundef 6)
  %4 = load volatile i32, ptr @i0, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  br label %cond.end11

cond.false5:                                      ; preds = %cond.end
  %5 = load volatile i32, ptr @i0, align 4
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.false5
  %6 = load ptr, ptr @s, align 8
  br label %cond.end9

cond.false8:                                      ; preds = %cond.false5
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi ptr [ %6, %cond.true7 ], [ @.str.2, %cond.false8 ]
  br label %cond.end11

cond.end11:                                       ; preds = %cond.end9, %cond.true4
  %cond12 = phi ptr [ @vb, %cond.true4 ], [ %cond10, %cond.end9 ]
  %call13 = call i32 (ptr, i32, ...) @A(ptr noundef %cond12, i32 noundef 5)
  %7 = load volatile i32, ptr @i0, align 4
  %cmp14 = icmp eq i32 %7, 0
  br i1 %cmp14, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %cond.end11
  br label %cond.end22

cond.false16:                                     ; preds = %cond.end11
  %8 = load volatile i32, ptr @i0, align 4
  %cmp17 = icmp eq i32 %8, 1
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.false16
  %9 = load ptr, ptr @s, align 8
  br label %cond.end20

cond.false19:                                     ; preds = %cond.false16
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi ptr [ %9, %cond.true18 ], [ @vb, %cond.false19 ]
  br label %cond.end22

cond.end22:                                       ; preds = %cond.end20, %cond.true15
  %cond23 = phi ptr [ @.str.2, %cond.true15 ], [ %cond21, %cond.end20 ]
  %call24 = call i32 (ptr, i32, ...) @A(ptr noundef %cond23, i32 noundef 3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test_binary_cond_expr_arrayptr() #0 {
entry:
  %0 = load volatile i32, ptr @i0, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr @pca, align 8
  %arraydecay = getelementptr inbounds [3 x i8], ptr %1, i64 0, i64 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr @pcb, align 8
  %arraydecay1 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay, %cond.true ], [ %arraydecay1, %cond.false ]
  %call = call i32 (ptr, i32, ...) @A(ptr noundef %cond, i32 noundef 4)
  %3 = load volatile i32, ptr @i0, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %cond.true3, label %cond.false5

cond.true3:                                       ; preds = %cond.end
  %4 = load ptr, ptr @pcb, align 8
  %arraydecay4 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 0
  br label %cond.end7

cond.false5:                                      ; preds = %cond.end
  %5 = load ptr, ptr @pca, align 8
  %arraydecay6 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 0
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false5, %cond.true3
  %cond8 = phi ptr [ %arraydecay4, %cond.true3 ], [ %arraydecay6, %cond.false5 ]
  %call9 = call i32 (ptr, i32, ...) @A(ptr noundef %cond8, i32 noundef 2)
  %6 = load volatile i32, ptr @i0, align 4
  %tobool10 = icmp ne i32 %6, 0
  br i1 %tobool10, label %cond.true11, label %cond.false13

cond.true11:                                      ; preds = %cond.end7
  %7 = load ptr, ptr @pva, align 8
  %arraydecay12 = getelementptr inbounds [3 x i8], ptr %7, i64 0, i64 0
  br label %cond.end15

cond.false13:                                     ; preds = %cond.end7
  %8 = load ptr, ptr @pvb, align 8
  %arraydecay14 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 0
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true11
  %cond16 = phi ptr [ %arraydecay12, %cond.true11 ], [ %arraydecay14, %cond.false13 ]
  %call17 = call i32 (ptr, i32, ...) @A(ptr noundef %cond16, i32 noundef 5)
  %9 = load volatile i32, ptr @i0, align 4
  %tobool18 = icmp ne i32 %9, 0
  br i1 %tobool18, label %cond.true19, label %cond.false21

cond.true19:                                      ; preds = %cond.end15
  %10 = load ptr, ptr @pvb, align 8
  %arraydecay20 = getelementptr inbounds [3 x i8], ptr %10, i64 0, i64 0
  br label %cond.end23

cond.false21:                                     ; preds = %cond.end15
  %11 = load ptr, ptr @pva, align 8
  %arraydecay22 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 0
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false21, %cond.true19
  %cond24 = phi ptr [ %arraydecay20, %cond.true19 ], [ %arraydecay22, %cond.false21 ]
  %call25 = call i32 (ptr, i32, ...) @A(ptr noundef %cond24, i32 noundef 3)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare i32 @A(...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
