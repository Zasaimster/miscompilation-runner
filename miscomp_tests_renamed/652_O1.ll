; 126861598024424409708043678023116791279
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/126861598024424409708043678023116791279.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/126861598024424409708043678023116791279.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i8 6, align 1
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [18 x i8] c"Hello, optimizer!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr @a, align 1, !tbaa !5
  %tobool.not.i = icmp ne i8 %0, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %land.end.i

land.rhs.i:                                       ; preds = %entry
  %conv.i = zext i8 %0 to i32
  store i32 %conv.i, ptr @b, align 4, !tbaa !8
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %entry
  %land.ext.i = zext i1 %tobool.not.i to i32
  store i32 %land.ext.i, ptr @c, align 4, !tbaa !8
  %not.i = xor i32 %land.ext.i, -1
  %1 = load i32, ptr @b, align 4, !tbaa !8
  %tobool7.i = icmp ne i32 %1, 0
  %2 = or i1 %tobool.not.i, %tobool7.i
  %not11.i = xor i8 %0, -1
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %conv13.i = zext i8 %not11.i to i32
  %tobool14.i = icmp ne i8 %0, -1
  %or.cond.i = select i1 %tobool14.i, i1 %2, i1 false
  %3 = load i8, ptr @a, align 1
  %conv16.i = zext i8 %3 to i32
  %d.0.i = select i1 %or.cond.i, i32 %conv16.i, i32 0
  %mul.i = mul nsw i32 %not.i, %conv13.i
  %mul18.i = mul nsw i32 %mul.i, %d.0.i
  %not19.neg.i = add nsw i32 %mul18.i, 1
  %4 = load i32, ptr @c, align 4, !tbaa !8
  %add.i = sub i32 0, %4
  %tobool20.not.not.i = icmp eq i32 %not19.neg.i, %add.i
  br i1 %tobool20.not.not.i, label %if.then32.i, label %fn1.exit

if.then32.i:                                      ; preds = %land.end.i
  tail call void @abort() #3
  unreachable

fn1.exit:                                         ; preds = %land.end.i
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
