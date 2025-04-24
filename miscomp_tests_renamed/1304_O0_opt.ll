; 123284776086673834341229569977129694999
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/123284776086673834341229569977129694999_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/123284776086673834341229569977129694999.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"a\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"b\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"c\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"e\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"f\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"g\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"h\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"i\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"j\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"k\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"l\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"m\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"n\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"o\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"p\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"q\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"r\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"s\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"t\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.16)
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.18)
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.19)
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
