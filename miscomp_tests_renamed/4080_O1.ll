; 147873637419008800688865869330396022261
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/147873637419008800688865869330396022261.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/147873637419008800688865869330396022261.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check = dso_local local_unnamed_addr global i32 0, align 4
@o = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Running main.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@h = dso_local local_unnamed_addr global ptr null, align 8
@u = dso_local local_unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@r.c.0 = internal unnamed_addr global i8 98, align 1
@r.cnt = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %args = alloca [5 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %args) #8
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  store ptr %0, ptr %args, align 16, !tbaa !5
  %arrayinit.element = getelementptr inbounds nuw i8, ptr %args, i64 8
  store ptr @.str.1, ptr %arrayinit.element, align 8, !tbaa !5
  %arrayinit.element1 = getelementptr inbounds nuw i8, ptr %args, i64 16
  store ptr @.str.2, ptr %arrayinit.element1, align 16, !tbaa !5
  %arrayinit.element2 = getelementptr inbounds nuw i8, ptr %args, i64 24
  store ptr @.str.3, ptr %arrayinit.element2, align 8, !tbaa !5
  %arrayinit.element3 = getelementptr inbounds nuw i8, ptr %args, i64 32
  store ptr @.str.4, ptr %arrayinit.element3, align 16, !tbaa !5
  %call4 = call i32 @x(i32 noundef 5, ptr noundef nonnull %args)
  %1 = load i32, ptr @check, align 4
  %cmp6 = icmp ne i32 %1, 2
  %2 = load i32, ptr @o, align 4
  %cmp9 = icmp ne i32 %2, 5
  %or.cond11 = select i1 %cmp6, i1 true, i1 %cmp9
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #9
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #9
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @x(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #3 {
entry:
  %0 = load i32, ptr @o, align 4, !tbaa !10
  %cmp = icmp sgt i32 %argc, %0
  %cmp1 = icmp sgt i32 %argc, 2
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %entry
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.5) #8
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then
  %2 = load i32, ptr @check, align 4, !tbaa !10
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, ptr @check, align 4, !tbaa !10
  %cmp1.i = icmp sgt i32 %2, 1
  br i1 %cmp1.i, label %if.then.i, label %s.exit

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.then
  tail call void @abort() #9
  unreachable

s.exit:                                           ; preds = %lor.lhs.false.i
  %call.i46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.5) #8
  %cmp.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %cmp.not.i47, label %lor.lhs.false.i49, label %if.then.i48

lor.lhs.false.i49:                                ; preds = %s.exit
  %inc.i50 = add nsw i32 %2, 2
  store i32 %inc.i50, ptr @check, align 4, !tbaa !10
  %cmp1.i51 = icmp eq i32 %2, 1
  br i1 %cmp1.i51, label %if.then.i48, label %s.exit53

if.then.i48:                                      ; preds = %lor.lhs.false.i49, %s.exit
  tail call void @abort() #9
  unreachable

s.exit53:                                         ; preds = %lor.lhs.false.i49
  %add.ptr.i52 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store ptr null, ptr @u, align 8, !tbaa !5
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %cmp17 = icmp eq ptr %3, %add.ptr.i52
  br i1 %cmp17, label %if.then18, label %while.cond.preheader

while.cond.preheader:                             ; preds = %s.exit53
  %o.promoted = load i32, ptr @o, align 4, !tbaa !10
  %r.c.0.promoted = load i8, ptr @r.c.0, align 1
  %r.cnt.promoted = load i32, ptr @r.cnt, align 4
  %inc61 = add nsw i32 %o.promoted, 1
  store i32 %inc61, ptr @o, align 4, !tbaa !10
  %cmp2462 = icmp slt i32 %inc61, %argc
  br i1 %cmp2462, label %while.body.preheader, label %cleanup

while.body.preheader:                             ; preds = %while.cond.preheader
  %4 = sext i32 %o.promoted to i64
  %5 = add nsw i64 %4, 1
  br label %while.body

if.then18:                                        ; preds = %s.exit53
  tail call void @abort() #9
  unreachable

if.else:                                          ; preds = %land.lhs.true2, %entry
  tail call void @abort() #9
  unreachable

while.body:                                       ; preds = %while.body.preheader, %r.exit
  %indvars.iv = phi i64 [ %5, %while.body.preheader ], [ %indvars.iv.next, %r.exit ]
  %inc.i575964 = phi i8 [ %r.c.0.promoted, %while.body.preheader ], [ %inc.i57, %r.exit ]
  %inc10.i6063 = phi i32 [ %r.cnt.promoted, %while.body.preheader ], [ %inc10.i, %r.exit ]
  %arrayidx26 = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx26, align 8, !tbaa !5
  %7 = load i8, ptr %6, align 1, !tbaa !12
  %cmp.not.i54 = icmp eq i8 %7, %inc.i575964
  br i1 %cmp.not.i54, label %lor.lhs.false.i56, label %if.then.i55

lor.lhs.false.i56:                                ; preds = %while.body
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %6, i64 1
  %8 = load i8, ptr %arrayidx.i, align 1, !tbaa !12
  %cmp5.i = icmp ne i8 %8, 0
  %cmp8.i = icmp sgt i32 %inc10.i6063, 3
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp8.i
  br i1 %or.cond.i, label %if.then.i55, label %r.exit

if.then.i55:                                      ; preds = %lor.lhs.false.i56, %while.body
  tail call void @abort() #9
  unreachable

r.exit:                                           ; preds = %lor.lhs.false.i56
  %inc.i57 = add i8 %inc.i575964, 1
  store i8 %inc.i57, ptr @r.c.0, align 1, !tbaa !12
  %inc10.i = add nsw i32 %inc10.i6063, 1
  store i32 %inc10.i, ptr @r.cnt, align 4, !tbaa !10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %9 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %9, ptr @o, align 4, !tbaa !10
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %argc, %lftr.wideiv
  br i1 %exitcond.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %r.exit, %while.cond.preheader
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @s(ptr noundef %v, ptr noundef writeonly captures(none) %pp) local_unnamed_addr #3 {
entry:
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %v, ptr noundef nonnull dereferenceable(2) @.str.5) #8
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr @check, align 4, !tbaa !10
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @check, align 4, !tbaa !10
  %cmp1 = icmp sgt i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @abort() #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr inbounds nuw i8, ptr %v, i64 1
  store ptr %add.ptr, ptr %pp, align 8, !tbaa !5
  ret ptr null
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noalias noundef nonnull ptr @m(ptr noundef readnone captures(none) %x) local_unnamed_addr #6 {
entry:
  tail call void @abort() #9
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @r(ptr noundef readonly captures(none) %f) local_unnamed_addr #3 {
entry:
  %0 = load i8, ptr %f, align 1, !tbaa !12
  %1 = load i8, ptr @r.c.0, align 1, !tbaa !12
  %cmp.not = icmp eq i8 %0, %1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %f, i64 1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %cmp5 = icmp ne i8 %2, 0
  %3 = load i32, ptr @r.cnt, align 4
  %cmp8 = icmp sgt i32 %3, 3
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @abort() #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %inc = add i8 %1, 1
  store i8 %inc, ptr @r.c.0, align 1, !tbaa !12
  %inc10 = add nsw i32 %3, 1
  store i32 %inc10, ptr @r.cnt, align 4, !tbaa !10
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
