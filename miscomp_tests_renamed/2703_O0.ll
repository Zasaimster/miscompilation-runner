; 131785402862382100892035378203279671
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/131785402862382100892035378203279671.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/131785402862382100892035378203279671.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t = dso_local global [10 x i8] c"012345678\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"data = \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca ptr, align 8
  %r = alloca i64, align 8
  %a = alloca i32, align 4
  %b = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store ptr @t, ptr %data, align 8
  store i64 4, ptr %r, align 8
  store i32 5, ptr %a, align 4
  store i64 12, ptr %b, align 8
  %0 = load i32, ptr %a, align 4
  %conv = zext i32 %0 to i64
  %1 = load i64, ptr %b, align 8
  %sub = sub i64 %conv, %1
  %2 = load ptr, ptr %data, align 8
  %3 = load i64, ptr %r, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %4 = load i32, ptr %add.ptr, align 4
  %conv1 = zext i32 %4 to i64
  %add = add i64 %conv1, %sub
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, ptr %add.ptr, align 4
  %5 = load ptr, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %5)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
