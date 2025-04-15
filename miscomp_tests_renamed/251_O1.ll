; 140771285176030623261991251071517540311
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140771285176030623261991251071517540311.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140771285176030623261991251071517540311.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global i32 1, align 4
@f = dso_local local_unnamed_addr global i32 1, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i8 0, align 1
@g = dso_local local_unnamed_addr global i8 0, align 1
@i = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @fn1() local_unnamed_addr #0 {
entry:
  store i32 0, ptr @e, align 4, !tbaa !5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr @c, align 4, !tbaa !5
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  %1 = load i32, ptr @b, align 4
  %tobool1 = icmp ne i32 %1, 0
  %2 = select i1 %tobool, i1 %tobool1, i1 false
  %land.ext = zext i1 %2 to i32
  store i32 %land.ext, ptr @k, align 4, !tbaa !5
  %conv = select i1 %2, i8 54, i8 0
  store i8 %conv, ptr @j, align 1, !tbaa !9
  %mul3 = mul i8 %conv, -109
  store i8 %mul3, ptr @g, align 1, !tbaa !9
  %3 = load i32, ptr @e, align 4, !tbaa !5
  %conv7 = sext i32 %3 to i64
  %4 = sext i8 %mul3 to i64
  %5 = add nsw i64 %conv7, -1
  %tobool8 = icmp ne i64 %5, %4
  %6 = load i32, ptr @d, align 4, !tbaa !5
  %tobool12.not = icmp eq i32 %6, 0
  %7 = load i32, ptr @f, align 4, !tbaa !5
  %tobool16.not = icmp eq i32 %7, 0
  %land.ext11 = zext i1 %tobool8 to i32
  %conv15 = select i1 %tobool8, i32 9, i32 0
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  br i1 %tobool12.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.cond
  store i32 %land.ext11, ptr @c, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.cond
  store i32 %conv15, ptr @i, align 4, !tbaa !5
  store i32 %conv15, ptr @h, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br i1 %tobool16.not, label %for.cond, label %if.then17, !llvm.loop !10

if.then17:                                        ; preds = %if.end
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 0, ptr @e, align 4, !tbaa !5
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 0, ptr @c, align 4, !tbaa !5
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %tobool.i = icmp ne i32 %0, 0
  %1 = load i32, ptr @b, align 4
  %tobool1.i = icmp ne i32 %1, 0
  %2 = select i1 %tobool.i, i1 %tobool1.i, i1 false
  %land.ext.i = zext i1 %2 to i32
  store i32 %land.ext.i, ptr @k, align 4, !tbaa !5
  %conv.i = select i1 %2, i8 54, i8 0
  store i8 %conv.i, ptr @j, align 1, !tbaa !9
  %mul3.i = mul i8 %conv.i, -109
  store i8 %mul3.i, ptr @g, align 1, !tbaa !9
  %3 = load i32, ptr @e, align 4, !tbaa !5
  %conv7.i = sext i32 %3 to i64
  %4 = sext i8 %mul3.i to i64
  %5 = add nsw i64 %conv7.i, -1
  %tobool8.i = icmp ne i64 %5, %4
  %6 = load i32, ptr @d, align 4, !tbaa !5
  %tobool12.not.i = icmp eq i32 %6, 0
  %7 = load i32, ptr @f, align 4, !tbaa !5
  %tobool16.not.i = icmp eq i32 %7, 0
  %land.ext11.i = zext i1 %tobool8.i to i32
  %conv15.i = select i1 %tobool8.i, i32 9, i32 0
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  br i1 %tobool12.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.cond.i
  store i32 %land.ext11.i, ptr @c, align 4, !tbaa !5
  br label %if.end.i

if.else.i:                                        ; preds = %for.cond.i
  store i32 %conv15.i, ptr @i, align 4, !tbaa !5
  store i32 %conv15.i, ptr @h, align 4, !tbaa !5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  br i1 %tobool16.not.i, label %for.cond.i, label %fn1.exit, !llvm.loop !10

fn1.exit:                                         ; preds = %if.end.i
  %8 = load i32, ptr @c, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %fn1.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %fn1.exit
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
