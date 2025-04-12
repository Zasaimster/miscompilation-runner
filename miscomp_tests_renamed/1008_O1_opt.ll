; 106388644341645462444980990263825258824
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106388644341645462444980990263825258824_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106388644341645462444980990263825258824.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i16, [2 x i8] }

@foo = dso_local local_unnamed_addr global %struct.foo zeroinitializer, align 4
@oldfoo = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [19 x i8] c"Running program...\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef range(i32 1, 3) i32 @bar(i32 noundef %k) local_unnamed_addr #0 {
entry:
  %bf.load = load i16, ptr @foo, align 4
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.cast = zext nneg i16 %bf.lshr to i32
  store i32 %bf.cast, ptr @oldfoo, align 4, !tbaa !5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = trunc i32 %k to i16
  %bf.load1 = load i16, ptr @foo, align 4
  %bf.value = shl i16 %0, 12
  %bf.clear = and i16 %bf.load1, 4095
  %bf.set = or disjoint i16 %bf.clear, %bf.value
  store i16 %bf.set, ptr @foo, align 4
  %tobool.not = icmp eq i32 %k, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %bf.load.i = load i16, ptr @foo, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 12
  %bf.cast.i = zext nneg i16 %bf.lshr.i to i32
  store i32 %bf.cast.i, ptr @oldfoo, align 4, !tbaa !5
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %bf.load1.i = load i16, ptr @foo, align 4
  %bf.clear.i = and i16 %bf.load1.i, 4095
  %bf.set.i = or disjoint i16 %bf.clear.i, 4096
  store i16 %bf.set.i, ptr @foo, align 4
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
