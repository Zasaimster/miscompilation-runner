; 118602558539696073383835762975716050099
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/118602558539696073383835762975716050099_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/118602558539696073383835762975716050099.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xx = type { i32, ptr, i16 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@f1.beenhere = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(ptr noundef captures(none) %p, i32 noundef %b, i32 noundef %c, i32 noundef %d) local_unnamed_addr #0 {
entry:
  %tobool1.not = icmp eq i32 %b, 0
  %c4 = getelementptr inbounds nuw i8, ptr %p, i64 16
  %tobool9.not = icmp eq i32 %c, 0
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %sw.epilog, %entry
  %d.addr.0.ph = phi i32 [ %conv13, %sw.epilog ], [ %d, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %if.end, %for.cond.outer
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  ret i32 0

if.end:                                           ; preds = %for.cond
  br i1 %tobool1.not, label %if.end3, label %for.cond, !llvm.loop !5

if.end3:                                          ; preds = %if.end
  %conv = trunc i32 %d.addr.0.ph to i16
  store i16 %conv, ptr %c4, align 8, !tbaa !7
  %0 = load i32, ptr %p, align 8, !tbaa !15
  %tobool6.not = icmp eq i32 %0, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  tail call void @abort() #8
  unreachable

if.end8:                                          ; preds = %if.end3
  br i1 %tobool9.not, label %sw.epilog, label %if.then10

if.then10:                                        ; preds = %if.end8
  tail call void @abort() #8
  unreachable

sw.epilog:                                        ; preds = %if.end8
  %sext = shl i32 %d.addr.0.ph, 16
  %conv13 = ashr exact i32 %sext, 16
  br label %for.cond.outer, !llvm.loop !5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @f2() local_unnamed_addr #3 {
entry:
  tail call void @abort() #8
  unreachable
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %s = alloca %struct.xx, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %s) #9
  store i32 0, ptr %s, align 8, !tbaa !15
  %0 = getelementptr inbounds nuw i8, ptr %s, i64 4
  store i32 0, ptr %0, align 4
  %b = getelementptr inbounds nuw i8, ptr %s, i64 8
  store ptr %s, ptr %b, align 8, !tbaa !16
  %c = getelementptr inbounds nuw i8, ptr %s, i64 16
  store i16 23, ptr %c, align 8, !tbaa !7
  %1 = getelementptr inbounds nuw i8, ptr %s, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %1, i8 0, i64 6, i1 false)
  br label %for.cond.outer.i

for.cond.outer.i:                                 ; preds = %if.end.i, %entry
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %foo.exit

if.end.i:                                         ; preds = %for.cond.outer.i
  store i16 0, ptr %c, align 8, !tbaa !7
  %2 = load i32, ptr %s, align 8, !tbaa !15
  %tobool6.not.i = icmp eq i32 %2, 0
  br i1 %tobool6.not.i, label %for.cond.outer.i, label %if.then7.i, !llvm.loop !5

if.then7.i:                                       ; preds = %if.end.i
  call void @abort() #8
  unreachable

foo.exit:                                         ; preds = %for.cond.outer.i
  %3 = load i32, ptr %s, align 8
  %cmp2 = icmp ne i32 %3, 0
  %4 = load ptr, ptr %b, align 8
  %cmp5 = icmp ne ptr %4, %s
  %or.cond10 = select i1 %cmp2, i1 true, i1 %cmp5
  %5 = load i16, ptr %c, align 8
  %cmp8 = icmp ne i16 %5, 0
  %or.cond11 = select i1 %or.cond10, i1 true, i1 %cmp8
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %foo.exit
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %foo.exit
  call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @f1(ptr noundef readnone captures(none) %p) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @f1.beenhere, align 4, !tbaa !17
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @f1.beenhere, align 4, !tbaa !17
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #8
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %0, 1
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !14, i64 16}
!8 = !{!"xx", !9, i64 0, !12, i64 8, !14, i64 16}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"p1 _ZTS2xx", !13, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"short", !10, i64 0}
!15 = !{!8, !9, i64 0}
!16 = !{!8, !12, i64 8}
!17 = !{!9, !9, i64 0}
