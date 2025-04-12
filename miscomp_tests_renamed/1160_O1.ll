; 101901999590968751229609788094726776760
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101901999590968751229609788094726776760.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101901999590968751229609788094726776760.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @unusedFunction() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @baz2(ptr noundef readnone captures(none) %a) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @baz3(i32 noundef %i) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #8
  unreachable

if.end:                                           ; preds = %entry
  ret i32 1
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @foo(ptr noundef %a, i64 noundef %b, i32 noundef %c) local_unnamed_addr #3 {
entry:
  %call83 = tail call i32 (ptr, ...) @baz1(ptr noundef %a) #9
  %conv84 = sext i32 %call83 to i64
  %cmp85 = icmp sgt i64 %b, %conv84
  br i1 %cmp85, label %if.then.lr.ph, label %while.end

if.then.lr.ph:                                    ; preds = %entry
  %and = and i32 %c, 16
  %cmp16 = icmp eq i32 %and, 0
  %and20 = and i32 %c, 16
  %tobool21.not = icmp eq i32 %and20, 0
  %and23 = and i32 %c, 16384
  %tobool24 = icmp ne i32 %and23, 0
  %and28 = and i32 %c, 2
  %tobool29.not = icmp eq i32 %and28, 0
  %0 = and i32 %c, 13832
  %or.cond82 = icmp eq i32 %0, 0
  %and59 = and i32 %c, 128
  %tobool60.not = icmp eq i32 %and59, 0
  %1 = and i32 %c, 13834
  %brmerge88.not = icmp eq i32 %1, 0
  br label %if.then

if.then:                                          ; preds = %if.then.lr.ph, %while.cond.backedge
  %tobool.not86 = phi i1 [ true, %if.then.lr.ph ], [ %cmp16, %while.cond.backedge ]
  br i1 %cmp16, label %while.cond.backedge, label %if.end19

if.end19:                                         ; preds = %if.then
  br i1 %tobool21.not, label %land.lhs.true27, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end19
  %or.cond69 = and i1 %tobool24, %tobool.not86
  %or.cond = or i1 %tobool29.not, %or.cond69
  %brmerge.not = and i1 %or.cond82, %or.cond
  br i1 %brmerge.not, label %if.end58, label %while.cond.backedge

land.lhs.true27:                                  ; preds = %if.end19
  br i1 %brmerge88.not, label %if.end58, label %while.cond.backedge

while.cond.backedge:                              ; preds = %land.lhs.true27, %land.lhs.true22, %if.then, %if.end58
  %call = tail call i32 (ptr, ...) @baz1(ptr noundef %a) #9
  %conv = sext i32 %call to i64
  %cmp = icmp sgt i64 %b, %conv
  br i1 %cmp, label %if.then, label %while.end, !llvm.loop !5

if.end58:                                         ; preds = %land.lhs.true27, %land.lhs.true22
  %2 = load ptr, ptr @bar, align 8
  %tobool62.not = icmp eq ptr %2, null
  %or.cond79 = select i1 %tobool60.not, i1 true, i1 %tobool62.not
  br i1 %or.cond79, label %while.cond.backedge, label %for.body

for.body:                                         ; preds = %if.end58
  tail call void @abort() #8
  unreachable

while.end:                                        ; preds = %while.cond.backedge, %entry
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

declare i32 @baz1(...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
entry:
  %n = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #9
  store ptr null, ptr %n, align 8, !tbaa !8
  store ptr %n, ptr @bar, align 8, !tbaa !12
  %call = call i32 @foo(ptr noundef nonnull %n, i64 noundef 1, i32 noundef 51217)
  call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any p2 pointer", !9, i64 0}
