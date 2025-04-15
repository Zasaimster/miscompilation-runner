; 145091630944398362080437786048012411716
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/145091630944398362080437786048012411716.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/145091630944398362080437786048012411716.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call1 = tail call i32 (i32, ptr, ...) @test(i32 noundef 6, ptr noundef nonnull @.str.1) #3
  %call2 = tail call i32 (i32, ptr, ...) @test(i32 noundef 1, ptr noundef nonnull @.str.2) #3
  %call3 = tail call i32 (i32, ptr, ...) @test(i32 noundef 0, ptr noundef nonnull @.str.3) #3
  %call4 = tail call i32 (i32, ptr, ptr, ...) @test(i32 noundef 5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #3
  %call5 = tail call i32 (i32, ptr, ptr, ...) @test(i32 noundef 6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #3
  %call6 = tail call i32 (i32, ptr, ptr, ...) @test(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #3
  %call7 = tail call i32 (i32, ptr, ptr, ...) @test(i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #3
  %call8 = tail call i32 (i32, ptr, i32, ...) @test(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 120) #3
  %call9 = tail call i32 (i32, ptr, ptr, ...) @test(i32 noundef 7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #3
  %call10 = tail call i32 (i32, ptr, i32, ...) @test(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 0) #3
  ret i32 0
}

declare i32 @test(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
