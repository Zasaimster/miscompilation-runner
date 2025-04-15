; 174994860546676392164090401713595387915
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174994860546676392164090401713595387915.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174994860546676392164090401713595387915.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@c = dso_local global i8 0, align 1
@d = dso_local global i8 0, align 1
@e = dso_local global i8 0, align 1
@f = dso_local global i64 0, align 8
@g = dso_local global i64 0, align 8
@h = dso_local global i64 0, align 8
@i = dso_local global i64 0, align 8
@j = dso_local global i16 0, align 2
@k = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @b, align 4
  store i32 %0, ptr @a, align 4
  %1 = load i8, ptr @c, align 1
  %conv = sext i8 %1 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv)
  %2 = load i8, ptr @c, align 1
  %conv1 = sext i8 %2 to i32
  store i32 %conv1, ptr @a, align 4
  %3 = load i8, ptr @d, align 1
  %conv2 = sext i8 %3 to i32
  store i32 %conv2, ptr @a, align 4
  %4 = load i8, ptr @e, align 1
  %conv3 = zext i8 %4 to i32
  store i32 %conv3, ptr @a, align 4
  %5 = load i64, ptr @f, align 8
  %conv4 = trunc i64 %5 to i32
  store i32 %conv4, ptr @a, align 4
  %6 = load i64, ptr @g, align 8
  %conv5 = trunc i64 %6 to i32
  store i32 %conv5, ptr @a, align 4
  %7 = load i64, ptr @h, align 8
  %conv6 = trunc i64 %7 to i32
  store i32 %conv6, ptr @a, align 4
  %8 = load i64, ptr @i, align 8
  %conv7 = trunc i64 %8 to i32
  store i32 %conv7, ptr @a, align 4
  %9 = load i16, ptr @j, align 2
  %conv8 = sext i16 %9 to i32
  store i32 %conv8, ptr @a, align 4
  %10 = load i16, ptr @k, align 2
  %conv9 = zext i16 %10 to i32
  store i32 %conv9, ptr @a, align 4
  %11 = load i32, ptr @a, align 4
  store i32 %11, ptr @b, align 4
  %12 = load i8, ptr @c, align 1
  %conv10 = sext i8 %12 to i32
  store i32 %conv10, ptr @b, align 4
  %13 = load i8, ptr @d, align 1
  %conv11 = sext i8 %13 to i32
  store i32 %conv11, ptr @b, align 4
  %14 = load i8, ptr @e, align 1
  %conv12 = zext i8 %14 to i32
  store i32 %conv12, ptr @b, align 4
  %15 = load i64, ptr @f, align 8
  %conv13 = trunc i64 %15 to i32
  store i32 %conv13, ptr @b, align 4
  %16 = load i64, ptr @g, align 8
  %conv14 = trunc i64 %16 to i32
  store i32 %conv14, ptr @b, align 4
  %17 = load i64, ptr @h, align 8
  %conv15 = trunc i64 %17 to i32
  store i32 %conv15, ptr @b, align 4
  %18 = load i64, ptr @i, align 8
  %conv16 = trunc i64 %18 to i32
  store i32 %conv16, ptr @b, align 4
  %19 = load i16, ptr @j, align 2
  %conv17 = sext i16 %19 to i32
  store i32 %conv17, ptr @b, align 4
  %20 = load i16, ptr @k, align 2
  %conv18 = zext i16 %20 to i32
  store i32 %conv18, ptr @b, align 4
  %21 = load i32, ptr @a, align 4
  %conv19 = trunc i32 %21 to i8
  store i8 %conv19, ptr @c, align 1
  %22 = load i32, ptr @b, align 4
  %conv20 = trunc i32 %22 to i8
  store i8 %conv20, ptr @c, align 1
  %23 = load i8, ptr @d, align 1
  store i8 %23, ptr @c, align 1
  %24 = load i8, ptr @e, align 1
  store i8 %24, ptr @c, align 1
  %25 = load i64, ptr @f, align 8
  %conv21 = trunc i64 %25 to i8
  store i8 %conv21, ptr @c, align 1
  %26 = load i64, ptr @g, align 8
  %conv22 = trunc i64 %26 to i8
  store i8 %conv22, ptr @c, align 1
  %27 = load i64, ptr @h, align 8
  %conv23 = trunc i64 %27 to i8
  store i8 %conv23, ptr @c, align 1
  %28 = load i64, ptr @i, align 8
  %conv24 = trunc i64 %28 to i8
  store i8 %conv24, ptr @c, align 1
  %29 = load i16, ptr @j, align 2
  %conv25 = trunc i16 %29 to i8
  store i8 %conv25, ptr @c, align 1
  %30 = load i16, ptr @k, align 2
  %conv26 = trunc i16 %30 to i8
  store i8 %conv26, ptr @c, align 1
  %31 = load i32, ptr @a, align 4
  %conv27 = trunc i32 %31 to i8
  store i8 %conv27, ptr @d, align 1
  %32 = load i32, ptr @b, align 4
  %conv28 = trunc i32 %32 to i8
  store i8 %conv28, ptr @d, align 1
  %33 = load i8, ptr @c, align 1
  store i8 %33, ptr @d, align 1
  %34 = load i8, ptr @e, align 1
  store i8 %34, ptr @d, align 1
  %35 = load i64, ptr @f, align 8
  %conv29 = trunc i64 %35 to i8
  store i8 %conv29, ptr @d, align 1
  %36 = load i64, ptr @g, align 8
  %conv30 = trunc i64 %36 to i8
  store i8 %conv30, ptr @d, align 1
  %37 = load i64, ptr @h, align 8
  %conv31 = trunc i64 %37 to i8
  store i8 %conv31, ptr @d, align 1
  %38 = load i64, ptr @i, align 8
  %conv32 = trunc i64 %38 to i8
  store i8 %conv32, ptr @d, align 1
  %39 = load i16, ptr @j, align 2
  %conv33 = trunc i16 %39 to i8
  store i8 %conv33, ptr @d, align 1
  %40 = load i16, ptr @k, align 2
  %conv34 = trunc i16 %40 to i8
  store i8 %conv34, ptr @d, align 1
  %41 = load i32, ptr @a, align 4
  %conv35 = trunc i32 %41 to i8
  store i8 %conv35, ptr @e, align 1
  %42 = load i32, ptr @b, align 4
  %conv36 = trunc i32 %42 to i8
  store i8 %conv36, ptr @e, align 1
  %43 = load i8, ptr @c, align 1
  store i8 %43, ptr @e, align 1
  %44 = load i8, ptr @d, align 1
  store i8 %44, ptr @e, align 1
  %45 = load i64, ptr @f, align 8
  %conv37 = trunc i64 %45 to i8
  store i8 %conv37, ptr @e, align 1
  %46 = load i64, ptr @g, align 8
  %conv38 = trunc i64 %46 to i8
  store i8 %conv38, ptr @e, align 1
  %47 = load i64, ptr @h, align 8
  %conv39 = trunc i64 %47 to i8
  store i8 %conv39, ptr @e, align 1
  %48 = load i64, ptr @i, align 8
  %conv40 = trunc i64 %48 to i8
  store i8 %conv40, ptr @e, align 1
  %49 = load i16, ptr @j, align 2
  %conv41 = trunc i16 %49 to i8
  store i8 %conv41, ptr @e, align 1
  %50 = load i16, ptr @k, align 2
  %conv42 = trunc i16 %50 to i8
  store i8 %conv42, ptr @e, align 1
  %51 = load i32, ptr @a, align 4
  %conv43 = sext i32 %51 to i64
  store i64 %conv43, ptr @f, align 8
  %52 = load i32, ptr @b, align 4
  %conv44 = zext i32 %52 to i64
  store i64 %conv44, ptr @f, align 8
  %53 = load i8, ptr @c, align 1
  %conv45 = sext i8 %53 to i64
  store i64 %conv45, ptr @f, align 8
  %54 = load i8, ptr @d, align 1
  %conv46 = sext i8 %54 to i64
  store i64 %conv46, ptr @f, align 8
  %55 = load i8, ptr @e, align 1
  %conv47 = zext i8 %55 to i64
  store i64 %conv47, ptr @f, align 8
  %56 = load i64, ptr @g, align 8
  store i64 %56, ptr @f, align 8
  %57 = load i64, ptr @h, align 8
  store i64 %57, ptr @f, align 8
  %58 = load i64, ptr @i, align 8
  store i64 %58, ptr @f, align 8
  %59 = load i16, ptr @j, align 2
  %conv48 = sext i16 %59 to i64
  store i64 %conv48, ptr @f, align 8
  %60 = load i16, ptr @k, align 2
  %conv49 = zext i16 %60 to i64
  store i64 %conv49, ptr @f, align 8
  %61 = load i32, ptr @a, align 4
  %conv50 = sext i32 %61 to i64
  store i64 %conv50, ptr @g, align 8
  %62 = load i32, ptr @b, align 4
  %conv51 = zext i32 %62 to i64
  store i64 %conv51, ptr @g, align 8
  %63 = load i8, ptr @c, align 1
  %conv52 = sext i8 %63 to i64
  store i64 %conv52, ptr @g, align 8
  %64 = load i8, ptr @d, align 1
  %conv53 = sext i8 %64 to i64
  store i64 %conv53, ptr @g, align 8
  %65 = load i8, ptr @e, align 1
  %conv54 = zext i8 %65 to i64
  store i64 %conv54, ptr @g, align 8
  %66 = load i64, ptr @f, align 8
  store i64 %66, ptr @g, align 8
  %67 = load i64, ptr @h, align 8
  store i64 %67, ptr @g, align 8
  %68 = load i64, ptr @i, align 8
  store i64 %68, ptr @g, align 8
  %69 = load i16, ptr @j, align 2
  %conv55 = sext i16 %69 to i64
  store i64 %conv55, ptr @g, align 8
  %70 = load i16, ptr @k, align 2
  %conv56 = zext i16 %70 to i64
  store i64 %conv56, ptr @g, align 8
  %71 = load i32, ptr @a, align 4
  %conv57 = sext i32 %71 to i64
  store i64 %conv57, ptr @h, align 8
  %72 = load i32, ptr @b, align 4
  %conv58 = zext i32 %72 to i64
  store i64 %conv58, ptr @h, align 8
  %73 = load i8, ptr @c, align 1
  %conv59 = sext i8 %73 to i64
  store i64 %conv59, ptr @h, align 8
  %74 = load i8, ptr @d, align 1
  %conv60 = sext i8 %74 to i64
  store i64 %conv60, ptr @h, align 8
  %75 = load i8, ptr @e, align 1
  %conv61 = zext i8 %75 to i64
  store i64 %conv61, ptr @h, align 8
  %76 = load i64, ptr @f, align 8
  store i64 %76, ptr @h, align 8
  %77 = load i64, ptr @g, align 8
  store i64 %77, ptr @h, align 8
  %78 = load i64, ptr @i, align 8
  store i64 %78, ptr @h, align 8
  %79 = load i16, ptr @j, align 2
  %conv62 = sext i16 %79 to i64
  store i64 %conv62, ptr @h, align 8
  %80 = load i16, ptr @k, align 2
  %conv63 = zext i16 %80 to i64
  store i64 %conv63, ptr @h, align 8
  %81 = load i32, ptr @a, align 4
  %conv64 = sext i32 %81 to i64
  store i64 %conv64, ptr @i, align 8
  %82 = load i32, ptr @b, align 4
  %conv65 = zext i32 %82 to i64
  store i64 %conv65, ptr @i, align 8
  %83 = load i8, ptr @c, align 1
  %conv66 = sext i8 %83 to i64
  store i64 %conv66, ptr @i, align 8
  %84 = load i8, ptr @d, align 1
  %conv67 = sext i8 %84 to i64
  store i64 %conv67, ptr @i, align 8
  %85 = load i8, ptr @e, align 1
  %conv68 = zext i8 %85 to i64
  store i64 %conv68, ptr @i, align 8
  %86 = load i64, ptr @f, align 8
  store i64 %86, ptr @i, align 8
  %87 = load i64, ptr @g, align 8
  store i64 %87, ptr @i, align 8
  %88 = load i64, ptr @h, align 8
  store i64 %88, ptr @i, align 8
  %89 = load i16, ptr @j, align 2
  %conv69 = sext i16 %89 to i64
  store i64 %conv69, ptr @i, align 8
  %90 = load i16, ptr @k, align 2
  %conv70 = zext i16 %90 to i64
  store i64 %conv70, ptr @i, align 8
  %91 = load i32, ptr @a, align 4
  %conv71 = trunc i32 %91 to i16
  store i16 %conv71, ptr @j, align 2
  %92 = load i32, ptr @b, align 4
  %conv72 = trunc i32 %92 to i16
  store i16 %conv72, ptr @j, align 2
  %93 = load i8, ptr @c, align 1
  %conv73 = sext i8 %93 to i16
  store i16 %conv73, ptr @j, align 2
  %94 = load i8, ptr @d, align 1
  %conv74 = sext i8 %94 to i16
  store i16 %conv74, ptr @j, align 2
  %95 = load i8, ptr @e, align 1
  %conv75 = zext i8 %95 to i16
  store i16 %conv75, ptr @j, align 2
  %96 = load i64, ptr @f, align 8
  %conv76 = trunc i64 %96 to i16
  store i16 %conv76, ptr @j, align 2
  %97 = load i64, ptr @g, align 8
  %conv77 = trunc i64 %97 to i16
  store i16 %conv77, ptr @j, align 2
  %98 = load i64, ptr @h, align 8
  %conv78 = trunc i64 %98 to i16
  store i16 %conv78, ptr @j, align 2
  %99 = load i64, ptr @i, align 8
  %conv79 = trunc i64 %99 to i16
  store i16 %conv79, ptr @j, align 2
  %100 = load i16, ptr @k, align 2
  store i16 %100, ptr @j, align 2
  %101 = load i32, ptr @a, align 4
  %conv80 = trunc i32 %101 to i16
  store i16 %conv80, ptr @k, align 2
  %102 = load i32, ptr @b, align 4
  %conv81 = trunc i32 %102 to i16
  store i16 %conv81, ptr @k, align 2
  %103 = load i8, ptr @c, align 1
  %conv82 = sext i8 %103 to i16
  store i16 %conv82, ptr @k, align 2
  %104 = load i8, ptr @d, align 1
  %conv83 = sext i8 %104 to i16
  store i16 %conv83, ptr @k, align 2
  %105 = load i8, ptr @e, align 1
  %conv84 = zext i8 %105 to i16
  store i16 %conv84, ptr @k, align 2
  %106 = load i64, ptr @f, align 8
  %conv85 = trunc i64 %106 to i16
  store i16 %conv85, ptr @k, align 2
  %107 = load i64, ptr @g, align 8
  %conv86 = trunc i64 %107 to i16
  store i16 %conv86, ptr @k, align 2
  %108 = load i64, ptr @h, align 8
  %conv87 = trunc i64 %108 to i16
  store i16 %conv87, ptr @k, align 2
  %109 = load i16, ptr @j, align 2
  store i16 %109, ptr @k, align 2
  %110 = load i64, ptr @i, align 8
  %conv88 = trunc i64 %110 to i16
  store i16 %conv88, ptr @k, align 2
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
