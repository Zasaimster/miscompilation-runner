; 117090259020370251006477636956538295292
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/117090259020370251006477636956538295292_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/117090259020370251006477636956538295292.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type <{ i32, i32, i32, i32, i32, i64 }>

@b = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@__const.fn1.e = private unnamed_addr constant { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 } { i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 -128, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0 }, align 4
@c = dso_local local_unnamed_addr global %struct.S0 zeroinitializer, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [18 x i8] c"This won't print.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @fn1() local_unnamed_addr #0 {
entry:
  store i32 1, ptr @b, align 4, !tbaa !5
  store i32 1, ptr @d, align 4, !tbaa !5
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) @c, ptr noundef nonnull align 4 dereferenceable(28) @__const.fn1.e, i64 28, i1 false), !tbaa.struct !9
  %bf.load = load i64, ptr getelementptr inbounds nuw (i8, ptr @c, i64 20), align 4
  %bf.set = or i64 %bf.load, 4294934528
  store i64 %bf.set, ptr getelementptr inbounds nuw (i8, ptr @c, i64 20), align 4
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %for.body, !llvm.loop !11

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i32 %0, ptr @b, align 4, !tbaa !5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 1, ptr @b, align 4, !tbaa !5
  store i32 1, ptr @d, align 4, !tbaa !5
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %tobool.not.i = icmp eq i32 %0, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) @c, ptr noundef nonnull align 4 dereferenceable(28) @__const.fn1.e, i64 28, i1 false), !tbaa.struct !9
  %bf.load.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @c, i64 20), align 4
  %bf.set.i = or i64 %bf.load.i, 4294934528
  store i64 %bf.set.i, ptr getelementptr inbounds nuw (i8, ptr @c, i64 20), align 4
  br i1 %tobool.not.i, label %fn1.exit, label %for.body.i, !llvm.loop !11

fn1.exit:                                         ; preds = %for.body.i
  store i32 %0, ptr @b, align 4, !tbaa !5
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %bf.load = load i64, ptr getelementptr inbounds nuw (i8, ptr @c, i64 20), align 4
  %1 = and i64 %bf.load, 12884901888
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %fn1.exit
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %fn1.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 8, !10}
!10 = !{!7, !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
