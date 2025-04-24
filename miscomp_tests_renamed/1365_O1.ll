; 124472215957398139014535244052934353969
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/124472215957398139014535244052934353969.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/124472215957398139014535244052934353969.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i8 6, align 1
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

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
  %1 = load i32, ptr @b, align 4, !tbaa !8
  %tobool7.i = icmp ne i32 %1, 0
  %2 = or i1 %tobool.not.i, %tobool7.i
  %not11.i = xor i8 %0, -1
  %tobool13.not.i = icmp eq i8 %0, 0
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %conv14.i = zext i8 %not11.i to i32
  %tobool15.i = icmp ne i8 %0, -1
  %or.cond.i = select i1 %tobool15.i, i1 %2, i1 false
  %3 = load i8, ptr @a, align 1
  %conv18.i = zext i8 %3 to i32
  %d.0.i = select i1 %or.cond.i, i32 %conv18.i, i32 0
  %4 = sub nsw i32 0, %d.0.i
  %mul.i = select i1 %tobool13.not.i, i32 %4, i32 0
  %mul21.i = mul nsw i32 %mul.i, %conv14.i
  %not22.neg.i = add nsw i32 %mul21.i, 1
  %5 = load i32, ptr @c, align 4, !tbaa !8
  %add.i = sub i32 0, %5
  %tobool23.not.i = icmp eq i32 %not22.neg.i, %add.i
  br i1 %tobool23.not.i, label %if.then35.i, label %fn1.exit

if.then35.i:                                      ; preds = %land.end.i
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
