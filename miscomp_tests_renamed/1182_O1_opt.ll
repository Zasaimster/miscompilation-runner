; 121103092325393341089774801508875168987
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121103092325393341089774801508875168987_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121103092325393341089774801508875168987.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { i32, i32, i32, i32, i32 }
%struct.C = type { [1 x %struct.B], i32, i32 }

@str = private unnamed_addr constant [14 x i8] c"X is negative\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @bar(ptr noundef captures(none) %x, ptr noundef readonly captures(none) %y) local_unnamed_addr #0 {
entry:
  %c3 = getelementptr inbounds nuw i8, ptr %x, i64 24
  %0 = load i32, ptr %c3, align 4, !tbaa !5
  %1 = load i16, ptr %y, align 8, !tbaa !10
  %a2 = getelementptr inbounds nuw i8, ptr %y, i64 8
  %2 = load i64, ptr %a2, align 8, !tbaa !14
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %c2 = getelementptr inbounds nuw i8, ptr %x, i64 20
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %d.0 = phi i32 [ %0, %entry ], [ %dec, %if.end ]
  %cmp = icmp slt i32 %d.0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i32, ptr %c2, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %d.1 = phi i32 [ %3, %if.then ], [ %d.0, %do.body ]
  %dec = add nsw i32 %d.1, -1
  %puts.i42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %4 = load i32, ptr %c3, align 4, !tbaa !5
  %cmp19.not = icmp eq i32 %dec, %4
  br i1 %cmp19.not, label %do.end, label %do.body, !llvm.loop !16

do.end:                                           ; preds = %if.end
  %idxprom = sext i32 %0 to i64
  %b4 = getelementptr inbounds [1 x %struct.B], ptr %x, i64 0, i64 %idxprom, i32 3
  %5 = lshr i16 %1, 9
  %conv21 = zext nneg i16 %5 to i64
  %add = add i64 %2, %conv21
  %conv22 = trunc i64 %add to i32
  store i32 %conv22, ptr %b4, align 4, !tbaa !19
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %b = alloca %struct.C, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %b, i8 0, i64 28, i1 false)
  %b3 = getelementptr inbounds nuw i8, ptr %b, i64 8
  store i32 424242, ptr %b3, align 4, !tbaa !21
  %c2 = getelementptr inbounds nuw i8, ptr %b, i64 20
  store i32 1, ptr %c2, align 4, !tbaa !15
  %c3.i = getelementptr inbounds nuw i8, ptr %b, i64 24
  %0 = load i32, ptr %c3.i, align 4, !tbaa !5
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %d.0.i = phi i32 [ %0, %entry ], [ %dec.i, %do.body.i ]
  %spec.select = tail call i32 @llvm.smax.i32(i32 %d.0.i, i32 1)
  %dec.i = add nsw i32 %spec.select, -1
  %puts.i42.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %cmp19.not.i = icmp eq i32 %dec.i, %0
  br i1 %cmp19.not.i, label %bar.exit, label %do.body.i, !llvm.loop !16

bar.exit:                                         ; preds = %do.body.i
  %idxprom.i = sext i32 %0 to i64
  %b4.i = getelementptr inbounds [1 x %struct.B], ptr %b, i64 0, i64 %idxprom.i, i32 3
  store i32 4243, ptr %b4.i, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %b) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !9, i64 24}
!6 = !{!"C", !7, i64 0, !9, i64 20, !9, i64 24}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"A", !12, i64 0, !13, i64 8}
!12 = !{!"short", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!11, !13, i64 8}
!15 = !{!6, !9, i64 20}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!20, !9, i64 12}
!20 = !{!"B", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16}
!21 = !{!20, !9, i64 8}
