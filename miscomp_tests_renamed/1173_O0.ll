; 120951249203284109403316747095654274673
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120951249203284109403316747095654274673.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120951249203284109403316747095654274673.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local constant [0 x [3 x i8]] zeroinitializer, align 1
@b = dso_local global [6 x i8] zeroinitializer, align 1
@pb = dso_local global ptr @b, align 8
@.str = private unnamed_addr constant [7 x i8] c"123xaa\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @b, ptr align 1 @a, i64 4, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 getelementptr inbounds (i8, ptr @b, i64 4), i8 97, i64 2, i1 false)
  %0 = load i8, ptr @b, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 49
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds ([6 x i8], ptr @b, i64 0, i64 1), align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 50
  br i1 %cmp3, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, ptr getelementptr inbounds ([6 x i8], ptr @b, i64 0, i64 2), align 1
  %conv6 = sext i8 %2 to i32
  %cmp7 = icmp ne i32 %conv6, 51
  br i1 %cmp7, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %3 = load i8, ptr getelementptr inbounds ([6 x i8], ptr @b, i64 0, i64 3), align 1
  %conv10 = sext i8 %3 to i32
  %cmp11 = icmp ne i32 %conv10, 120
  br i1 %cmp11, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %4 = load i8, ptr getelementptr inbounds ([6 x i8], ptr @b, i64 0, i64 4), align 1
  %conv14 = sext i8 %4 to i32
  %cmp15 = icmp ne i32 %conv14, 97
  br i1 %cmp15, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %5 = load i8, ptr getelementptr inbounds ([6 x i8], ptr @b, i64 0, i64 5), align 1
  %conv18 = sext i8 %5 to i32
  %cmp19 = icmp ne i32 %conv18, 97
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false17
  %6 = load ptr, ptr @pb, align 8
  %call = call i32 @memcmp(ptr noundef %6, ptr noundef @.str, i64 noundef 6) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end
  call void @abort() #5
  unreachable

if.end22:                                         ; preds = %if.end
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
