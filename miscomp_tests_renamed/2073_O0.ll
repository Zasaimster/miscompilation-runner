; 14079864155072052517497531153803234829
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/14079864155072052517497531153803234829.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/14079864155072052517497531153803234829.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wchar = type { ptr, [42 x i8] }
%struct.wint = type { ptr, [1 x i32] }

@__const.f1char.s = private unnamed_addr constant [9 x i8] c"nonono\00\00\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"bugs\00", align 1
@__const.f1char.q = private unnamed_addr constant { ptr, [42 x i8], [6 x i8] } { ptr @.str, [42 x i8] zeroinitializer, [6 x i8] zeroinitializer }, align 8
@__const.f1int.s = private unnamed_addr constant [9 x i8] c"nonono\00\00\00", align 1
@__const.f1int.q = private unnamed_addr constant { ptr, [1 x i32], [4 x i8] } { ptr @.str, [1 x i32] zeroinitializer, [4 x i8] zeroinitializer }, align 8
@__const.main.s = private unnamed_addr constant [9 x i8] c"nonono\00\00\00", align 1
@main.q = internal global { ptr, <{ i8, [41 x i8] }>, [6 x i8] } { ptr @.str, <{ i8, [41 x i8] }> <{ i8 99, [41 x i8] zeroinitializer }>, [6 x i8] zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bla\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1char() #0 {
entry:
  %s = alloca [9 x i8], align 1
  %q = alloca %struct.wchar, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s, ptr align 1 @__const.f1char.s, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q, ptr align 8 @__const.f1char.q, i64 56, i1 false)
  %arrayidx = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 0
  %0 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1int() #0 {
entry:
  %s = alloca [9 x i8], align 1
  %q = alloca %struct.wint, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s, ptr align 1 @__const.f1int.s, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %q, ptr align 8 @__const.f1int.q, i64 16, i1 false)
  %arrayidx = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 0
  %0 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [9 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s, ptr align 1 @__const.main.s, i64 9, i1 false)
  %call = call i32 @f1char()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @f1int()
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %arrayidx = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 0
  %0 = load i8, ptr %arrayidx, align 1
  %tobool4 = icmp ne i8 %0, 0
  %lnot = xor i1 %tobool4, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
