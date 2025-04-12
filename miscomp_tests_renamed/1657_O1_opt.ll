; 115370017723845506977990304148549621079
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/115370017723845506977990304148549621079_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/115370017723845506977990304148549621079.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.i.0 = internal unnamed_addr global i64 0, align 8
@str = private unnamed_addr constant [29 x i8] c"This function is never used.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i64 884479243264, 0) i64 @f(i64 %x.coerce) local_unnamed_addr #0 {
entry:
  %bf.clear = and i64 %x.coerce, -1099511627521
  %bf.set = or disjoint i64 %bf.clear, 884479243264
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i64 %bf.set
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %bf.load = load i64, ptr @main.i.0, align 8
  %bf.clear = and i64 %bf.load, -256
  %bf.set = or disjoint i64 %bf.clear, 12
  store i64 %bf.set, ptr @main.i.0, align 8
  %bf.clear.i = and i64 %bf.set, -1099511627764
  %bf.set.i = or disjoint i64 %bf.clear.i, 884479243264
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i64 %bf.set.i, ptr @main.i.0, align 8, !tbaa !5
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
