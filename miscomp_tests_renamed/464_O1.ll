; 192792589404208439437625191780330472568
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192792589404208439437625191780330472568.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192792589404208439437625191780330472568.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fgh\00", align 1
@a = dso_local local_unnamed_addr global <{ ptr, ptr, ptr, ptr, [12 x ptr] }> <{ ptr null, ptr @.str, ptr @.str.1, ptr @.str.2, [12 x ptr] zeroinitializer }>, align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 3) i32 @foo(ptr noundef readonly captures(none) %x, ptr noundef readonly captures(address_is_null) %y, i64 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp18.not = icmp eq i64 %n, 0
  br i1 %cmp18.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %y, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %j.020 = phi i64 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc ]
  %i.019 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %add.ptr = getelementptr inbounds nuw i8, ptr %x, i64 %j.020
  %arrayidx = getelementptr inbounds nuw [16 x ptr], ptr @a, i64 0, i64 %i.019
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #4
  %call2 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull %0, i64 noundef %call) #4
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body
  %add = add i64 %call, %j.020
  br i1 %tobool.not, label %for.inc, label %if.then6

if.then6:                                         ; preds = %if.end
  %call7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %y) #4
  %add8 = add i64 %call7, %add
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then6
  %j.1 = phi i64 [ %add8, %if.then6 ], [ %add, %if.end ]
  %inc = add nuw i64 %i.019, 1
  %exitcond.not = icmp eq i64 %inc, %n
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !10

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 2, %for.body ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i, %entry
  %j.020.i = phi i64 [ 0, %entry ], [ %add.i, %if.end.i ]
  %i.019.i = phi i64 [ 0, %entry ], [ %inc.i, %if.end.i ]
  %add.ptr.i = getelementptr inbounds nuw i8, ptr @.str.3, i64 %j.020.i
  %arrayidx.i = getelementptr inbounds nuw [16 x ptr], ptr @a, i64 0, i64 %i.019.i
  %0 = load ptr, ptr %arrayidx.i, align 8, !tbaa !5
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #4
  %call2.i = tail call i32 @strncmp(ptr noundef nonnull readonly %add.ptr.i, ptr noundef nonnull %0, i64 noundef %call.i) #4
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end.i, label %if.then

if.end.i:                                         ; preds = %for.body.i
  %add.i = add i64 %call.i, %j.020.i
  %inc.i = add nuw nsw i64 %i.019.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i, 3
  br i1 %exitcond.not.i, label %if.end, label %for.body.i, !llvm.loop !10

if.then:                                          ; preds = %for.body.i
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %if.end.i
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
