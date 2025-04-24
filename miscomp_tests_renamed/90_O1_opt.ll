; 101697282931861012824112384069078593546
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101697282931861012824112384069078593546_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101697282931861012824112384069078593546.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [10 x i8] c"Loop done\00", align 1
@str.21 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@str.22 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@str.23 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@str.24 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@str.25 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@str.26 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@str.27 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@str.28 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@str.29 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@str.30 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@str.31 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@str.32 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@str.33 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@str.34 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@str.35 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@str.36 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@str.37 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@str.38 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@str.39 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@str.40 = private unnamed_addr constant [2 x i8] c"t\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %puts21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %puts22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.22)
  %puts23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  %puts24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %puts25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %puts26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  %puts27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %puts28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %puts29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %puts30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  %puts31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  %puts32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  %puts33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  %puts34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  %puts35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  %puts36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.36)
  %puts37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  %puts38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38)
  %puts39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.39)
  %puts40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
