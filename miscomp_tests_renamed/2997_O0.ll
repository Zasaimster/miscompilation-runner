; 152610870463620268140295654509766990114
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/152610870463620268140295654509766990114.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/152610870463620268140295654509766990114.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array1 = private unnamed_addr constant [1 x i32] [i32 1], align 4
@__const.main.array2 = private unnamed_addr constant [2 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] zeroinitializer], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array1 = alloca [1 x i32], align 4
  %array2 = alloca [2 x [1 x i32]], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array1, ptr align 4 @__const.main.array1, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array2, ptr align 4 @__const.main.array2, i64 8, i1 false)
  %arrayidx = getelementptr inbounds [1 x i32], ptr %array1, i64 0, i64 0
  %0 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @example7() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 5, ptr %a, align 4
  store i32 5, ptr %b, align 4
  %0 = load i32, ptr %a, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  ret void
}

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
