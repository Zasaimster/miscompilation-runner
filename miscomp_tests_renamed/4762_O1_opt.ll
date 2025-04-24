; 184022808993062207372517672788467649344
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/184022808993062207372517672788467649344_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/184022808993062207372517672788467649344.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@bar = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @baz1(ptr noundef readnone captures(none) %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @baz2(ptr noundef readnone captures(none) %a) local_unnamed_addr #2 {
entry:
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @baz3(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #7
  unreachable

if.end:                                           ; preds = %entry
  ret i32 1
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(ptr readnone captures(none) %a, i64 noundef %b, i32 noundef %c) local_unnamed_addr #0 {
entry:
  %call.i81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i82 = sext i32 %call.i81 to i64
  %cmp83 = icmp sgt i64 %b, %conv.i82
  br i1 %cmp83, label %if.then.lr.ph, label %while.end

if.then.lr.ph:                                    ; preds = %entry
  %and = and i32 %c, 16
  %cmp14 = icmp eq i32 %and, 0
  %and18 = and i32 %c, 16
  %tobool19.not = icmp eq i32 %and18, 0
  %and21 = and i32 %c, 16384
  %tobool22 = icmp ne i32 %and21, 0
  %and26 = and i32 %c, 2
  %tobool27.not = icmp eq i32 %and26, 0
  %0 = and i32 %c, 13832
  %or.cond80 = icmp eq i32 %0, 0
  %and57 = and i32 %c, 128
  %tobool58.not = icmp eq i32 %and57, 0
  %1 = and i32 %c, 13834
  %brmerge86.not = icmp eq i32 %1, 0
  br label %if.then

if.then:                                          ; preds = %while.cond.backedge, %if.then.lr.ph
  %tobool.not84 = phi i1 [ true, %if.then.lr.ph ], [ %cmp14, %while.cond.backedge ]
  br i1 %cmp14, label %while.cond.backedge, label %if.end17

if.end17:                                         ; preds = %if.then
  br i1 %tobool19.not, label %land.lhs.true25, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end17
  %or.cond67 = and i1 %tobool22, %tobool.not84
  %or.cond = or i1 %tobool27.not, %or.cond67
  %brmerge.not = and i1 %or.cond80, %or.cond
  br i1 %brmerge.not, label %if.end56, label %while.cond.backedge

land.lhs.true25:                                  ; preds = %if.end17
  br i1 %brmerge86.not, label %if.end56, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end56, %land.lhs.true25, %land.lhs.true20, %if.then
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i = sext i32 %call.i to i64
  %cmp = icmp sgt i64 %b, %conv.i
  br i1 %cmp, label %if.then, label %while.end, !llvm.loop !5

if.end56:                                         ; preds = %land.lhs.true25, %land.lhs.true20
  %2 = load ptr, ptr @bar, align 8
  %tobool60.not = icmp eq ptr %2, null
  %or.cond77 = select i1 %tobool58.not, i1 true, i1 %tobool60.not
  br i1 %or.cond77, label %while.cond.backedge, label %for.body

for.body:                                         ; preds = %if.end56
  tail call void @abort() #7
  unreachable

while.end:                                        ; preds = %while.cond.backedge, %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
entry:
  %n = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #8
  store ptr null, ptr %n, align 8, !tbaa !8
  store ptr %n, ptr @bar, align 8, !tbaa !12
  %call = call i32 @foo(ptr nonnull poison, i64 noundef 1, i32 noundef 51217)
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
