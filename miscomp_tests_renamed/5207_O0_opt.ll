; 191976046720421012004293067786126796101
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/191976046720421012004293067786126796101_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/191976046720421012004293067786126796101.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@d = dso_local global i8 0, align 1
@e = dso_local global i8 0, align 1
@f = dso_local global i64 0, align 8
@g = dso_local global i64 0, align 8
@h = dso_local global i64 0, align 8
@i = dso_local global i64 0, align 8
@j = dso_local global i16 0, align 2
@k = dso_local global i16 0, align 2
@b = dso_local global i32 0, align 4
@c = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr @a, align 4
  store i32 0, ptr @a, align 4
  %0 = load i8, ptr @d, align 1
  %conv = sext i8 %0 to i32
  store i32 %conv, ptr @a, align 4
  %1 = load i8, ptr @e, align 1
  %conv1 = zext i8 %1 to i32
  store i32 %conv1, ptr @a, align 4
  %2 = load i64, ptr @f, align 8
  %conv2 = trunc i64 %2 to i32
  store i32 %conv2, ptr @a, align 4
  %3 = load i64, ptr @g, align 8
  %conv3 = trunc i64 %3 to i32
  store i32 %conv3, ptr @a, align 4
  %4 = load i64, ptr @h, align 8
  %conv4 = trunc i64 %4 to i32
  store i32 %conv4, ptr @a, align 4
  %5 = load i64, ptr @i, align 8
  %conv5 = trunc i64 %5 to i32
  store i32 %conv5, ptr @a, align 4
  %6 = load i16, ptr @j, align 2
  %conv6 = sext i16 %6 to i32
  store i32 %conv6, ptr @a, align 4
  %7 = load i16, ptr @k, align 2
  %conv7 = zext i16 %7 to i32
  store i32 %conv7, ptr @a, align 4
  %8 = load i32, ptr @a, align 4
  store i32 %8, ptr @b, align 4
  %9 = load i8, ptr @c, align 1
  %conv8 = sext i8 %9 to i32
  store i32 %conv8, ptr @b, align 4
  %10 = load i8, ptr @d, align 1
  %conv9 = sext i8 %10 to i32
  store i32 %conv9, ptr @b, align 4
  %11 = load i8, ptr @e, align 1
  %conv10 = zext i8 %11 to i32
  store i32 %conv10, ptr @b, align 4
  %12 = load i64, ptr @f, align 8
  %conv11 = trunc i64 %12 to i32
  store i32 %conv11, ptr @b, align 4
  %13 = load i64, ptr @g, align 8
  %conv12 = trunc i64 %13 to i32
  store i32 %conv12, ptr @b, align 4
  %14 = load i64, ptr @h, align 8
  %conv13 = trunc i64 %14 to i32
  store i32 %conv13, ptr @b, align 4
  %15 = load i64, ptr @i, align 8
  %conv14 = trunc i64 %15 to i32
  store i32 %conv14, ptr @b, align 4
  %16 = load i16, ptr @j, align 2
  %conv15 = sext i16 %16 to i32
  store i32 %conv15, ptr @b, align 4
  %17 = load i16, ptr @k, align 2
  %conv16 = zext i16 %17 to i32
  store i32 %conv16, ptr @b, align 4
  %18 = load i32, ptr @a, align 4
  %conv17 = trunc i32 %18 to i8
  store i8 %conv17, ptr @c, align 1
  %19 = load i32, ptr @b, align 4
  %conv18 = trunc i32 %19 to i8
  store i8 %conv18, ptr @c, align 1
  %20 = load i8, ptr @d, align 1
  store i8 %20, ptr @c, align 1
  %21 = load i8, ptr @e, align 1
  store i8 %21, ptr @c, align 1
  %22 = load i64, ptr @f, align 8
  %conv19 = trunc i64 %22 to i8
  store i8 %conv19, ptr @c, align 1
  %23 = load i64, ptr @g, align 8
  %conv20 = trunc i64 %23 to i8
  store i8 %conv20, ptr @c, align 1
  %24 = load i64, ptr @h, align 8
  %conv21 = trunc i64 %24 to i8
  store i8 %conv21, ptr @c, align 1
  %25 = load i64, ptr @i, align 8
  %conv22 = trunc i64 %25 to i8
  store i8 %conv22, ptr @c, align 1
  %26 = load i16, ptr @j, align 2
  %conv23 = trunc i16 %26 to i8
  store i8 %conv23, ptr @c, align 1
  %27 = load i16, ptr @k, align 2
  %conv24 = trunc i16 %27 to i8
  store i8 %conv24, ptr @c, align 1
  %28 = load i32, ptr @a, align 4
  %conv25 = trunc i32 %28 to i8
  store i8 %conv25, ptr @d, align 1
  %29 = load i32, ptr @b, align 4
  %conv26 = trunc i32 %29 to i8
  store i8 %conv26, ptr @d, align 1
  %30 = load i8, ptr @c, align 1
  store i8 %30, ptr @d, align 1
  %31 = load i8, ptr @e, align 1
  store i8 %31, ptr @d, align 1
  %32 = load i64, ptr @f, align 8
  %conv27 = trunc i64 %32 to i8
  store i8 %conv27, ptr @d, align 1
  %33 = load i64, ptr @g, align 8
  %conv28 = trunc i64 %33 to i8
  store i8 %conv28, ptr @d, align 1
  %34 = load i64, ptr @h, align 8
  %conv29 = trunc i64 %34 to i8
  store i8 %conv29, ptr @d, align 1
  %35 = load i64, ptr @i, align 8
  %conv30 = trunc i64 %35 to i8
  store i8 %conv30, ptr @d, align 1
  %36 = load i16, ptr @j, align 2
  %conv31 = trunc i16 %36 to i8
  store i8 %conv31, ptr @d, align 1
  %37 = load i16, ptr @k, align 2
  %conv32 = trunc i16 %37 to i8
  store i8 %conv32, ptr @d, align 1
  %38 = load i32, ptr @a, align 4
  %conv33 = trunc i32 %38 to i8
  store i8 %conv33, ptr @e, align 1
  %39 = load i32, ptr @b, align 4
  %conv34 = trunc i32 %39 to i8
  store i8 %conv34, ptr @e, align 1
  %40 = load i8, ptr @c, align 1
  store i8 %40, ptr @e, align 1
  %41 = load i8, ptr @d, align 1
  store i8 %41, ptr @e, align 1
  %42 = load i64, ptr @f, align 8
  %conv35 = trunc i64 %42 to i8
  store i8 %conv35, ptr @e, align 1
  %43 = load i64, ptr @g, align 8
  %conv36 = trunc i64 %43 to i8
  store i8 %conv36, ptr @e, align 1
  %44 = load i64, ptr @h, align 8
  %conv37 = trunc i64 %44 to i8
  store i8 %conv37, ptr @e, align 1
  %45 = load i64, ptr @i, align 8
  %conv38 = trunc i64 %45 to i8
  store i8 %conv38, ptr @e, align 1
  %46 = load i16, ptr @j, align 2
  %conv39 = trunc i16 %46 to i8
  store i8 %conv39, ptr @e, align 1
  %47 = load i16, ptr @k, align 2
  %conv40 = trunc i16 %47 to i8
  store i8 %conv40, ptr @e, align 1
  %48 = load i32, ptr @a, align 4
  %conv41 = sext i32 %48 to i64
  store i64 %conv41, ptr @f, align 8
  %49 = load i32, ptr @b, align 4
  %conv42 = zext i32 %49 to i64
  store i64 %conv42, ptr @f, align 8
  %50 = load i8, ptr @c, align 1
  %conv43 = sext i8 %50 to i64
  store i64 %conv43, ptr @f, align 8
  %51 = load i8, ptr @d, align 1
  %conv44 = sext i8 %51 to i64
  store i64 %conv44, ptr @f, align 8
  %52 = load i8, ptr @e, align 1
  %conv45 = zext i8 %52 to i64
  store i64 %conv45, ptr @f, align 8
  %53 = load i64, ptr @g, align 8
  store i64 %53, ptr @f, align 8
  %54 = load i64, ptr @h, align 8
  store i64 %54, ptr @f, align 8
  %55 = load i64, ptr @i, align 8
  store i64 %55, ptr @f, align 8
  %56 = load i16, ptr @j, align 2
  %conv46 = sext i16 %56 to i64
  store i64 %conv46, ptr @f, align 8
  %57 = load i16, ptr @k, align 2
  %conv47 = zext i16 %57 to i64
  store i64 %conv47, ptr @f, align 8
  %58 = load i32, ptr @a, align 4
  %conv48 = sext i32 %58 to i64
  store i64 %conv48, ptr @g, align 8
  %59 = load i32, ptr @b, align 4
  %conv49 = zext i32 %59 to i64
  store i64 %conv49, ptr @g, align 8
  %60 = load i8, ptr @c, align 1
  %conv50 = sext i8 %60 to i64
  store i64 %conv50, ptr @g, align 8
  %61 = load i8, ptr @d, align 1
  %conv51 = sext i8 %61 to i64
  store i64 %conv51, ptr @g, align 8
  %62 = load i8, ptr @e, align 1
  %conv52 = zext i8 %62 to i64
  store i64 %conv52, ptr @g, align 8
  %63 = load i64, ptr @f, align 8
  store i64 %63, ptr @g, align 8
  %64 = load i64, ptr @h, align 8
  store i64 %64, ptr @g, align 8
  %65 = load i64, ptr @i, align 8
  store i64 %65, ptr @g, align 8
  %66 = load i16, ptr @j, align 2
  %conv53 = sext i16 %66 to i64
  store i64 %conv53, ptr @g, align 8
  %67 = load i16, ptr @k, align 2
  %conv54 = zext i16 %67 to i64
  store i64 %conv54, ptr @g, align 8
  %68 = load i32, ptr @a, align 4
  %conv55 = sext i32 %68 to i64
  store i64 %conv55, ptr @h, align 8
  %69 = load i32, ptr @b, align 4
  %conv56 = zext i32 %69 to i64
  store i64 %conv56, ptr @h, align 8
  %70 = load i8, ptr @c, align 1
  %conv57 = sext i8 %70 to i64
  store i64 %conv57, ptr @h, align 8
  %71 = load i8, ptr @d, align 1
  %conv58 = sext i8 %71 to i64
  store i64 %conv58, ptr @h, align 8
  %72 = load i8, ptr @e, align 1
  %conv59 = zext i8 %72 to i64
  store i64 %conv59, ptr @h, align 8
  %73 = load i64, ptr @f, align 8
  store i64 %73, ptr @h, align 8
  %74 = load i64, ptr @g, align 8
  store i64 %74, ptr @h, align 8
  %75 = load i64, ptr @i, align 8
  store i64 %75, ptr @h, align 8
  %76 = load i16, ptr @j, align 2
  %conv60 = sext i16 %76 to i64
  store i64 %conv60, ptr @h, align 8
  %77 = load i16, ptr @k, align 2
  %conv61 = zext i16 %77 to i64
  store i64 %conv61, ptr @h, align 8
  %78 = load i32, ptr @a, align 4
  %conv62 = sext i32 %78 to i64
  store i64 %conv62, ptr @i, align 8
  %79 = load i32, ptr @b, align 4
  %conv63 = zext i32 %79 to i64
  store i64 %conv63, ptr @i, align 8
  %80 = load i8, ptr @c, align 1
  %conv64 = sext i8 %80 to i64
  store i64 %conv64, ptr @i, align 8
  %81 = load i8, ptr @d, align 1
  %conv65 = sext i8 %81 to i64
  store i64 %conv65, ptr @i, align 8
  %82 = load i8, ptr @e, align 1
  %conv66 = zext i8 %82 to i64
  store i64 %conv66, ptr @i, align 8
  %83 = load i64, ptr @f, align 8
  store i64 %83, ptr @i, align 8
  %84 = load i64, ptr @g, align 8
  store i64 %84, ptr @i, align 8
  %85 = load i64, ptr @h, align 8
  store i64 %85, ptr @i, align 8
  %86 = load i16, ptr @j, align 2
  %conv67 = sext i16 %86 to i64
  store i64 %conv67, ptr @i, align 8
  %87 = load i16, ptr @k, align 2
  %conv68 = zext i16 %87 to i64
  store i64 %conv68, ptr @i, align 8
  %88 = load i32, ptr @a, align 4
  %conv69 = trunc i32 %88 to i16
  store i16 %conv69, ptr @j, align 2
  %89 = load i32, ptr @b, align 4
  %conv70 = trunc i32 %89 to i16
  store i16 %conv70, ptr @j, align 2
  %90 = load i8, ptr @c, align 1
  %conv71 = sext i8 %90 to i16
  store i16 %conv71, ptr @j, align 2
  %91 = load i8, ptr @d, align 1
  %conv72 = sext i8 %91 to i16
  store i16 %conv72, ptr @j, align 2
  %92 = load i8, ptr @e, align 1
  %conv73 = zext i8 %92 to i16
  store i16 %conv73, ptr @j, align 2
  %93 = load i64, ptr @f, align 8
  %conv74 = trunc i64 %93 to i16
  store i16 %conv74, ptr @j, align 2
  %94 = load i64, ptr @g, align 8
  %conv75 = trunc i64 %94 to i16
  store i16 %conv75, ptr @j, align 2
  %95 = load i64, ptr @h, align 8
  %conv76 = trunc i64 %95 to i16
  store i16 %conv76, ptr @j, align 2
  %96 = load i64, ptr @i, align 8
  %conv77 = trunc i64 %96 to i16
  store i16 %conv77, ptr @j, align 2
  %97 = load i16, ptr @k, align 2
  store i16 %97, ptr @j, align 2
  %98 = load i32, ptr @a, align 4
  %conv78 = trunc i32 %98 to i16
  store i16 %conv78, ptr @k, align 2
  %99 = load i32, ptr @b, align 4
  %conv79 = trunc i32 %99 to i16
  store i16 %conv79, ptr @k, align 2
  %100 = load i8, ptr @c, align 1
  %conv80 = sext i8 %100 to i16
  store i16 %conv80, ptr @k, align 2
  %101 = load i8, ptr @d, align 1
  %conv81 = sext i8 %101 to i16
  store i16 %conv81, ptr @k, align 2
  %102 = load i8, ptr @e, align 1
  %conv82 = zext i8 %102 to i16
  store i16 %conv82, ptr @k, align 2
  %103 = load i64, ptr @f, align 8
  %conv83 = trunc i64 %103 to i16
  store i16 %conv83, ptr @k, align 2
  %104 = load i64, ptr @g, align 8
  %conv84 = trunc i64 %104 to i16
  store i16 %conv84, ptr @k, align 2
  %105 = load i64, ptr @h, align 8
  %conv85 = trunc i64 %105 to i16
  store i16 %conv85, ptr @k, align 2
  %106 = load i16, ptr @j, align 2
  store i16 %106, ptr @k, align 2
  %107 = load i64, ptr @i, align 8
  %conv86 = trunc i64 %107 to i16
  store i16 %conv86, ptr @k, align 2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
