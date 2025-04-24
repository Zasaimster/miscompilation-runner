; 193302291741933734731087903735161227362
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/193302291741933734731087903735161227362_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/193302291741933734731087903735161227362.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @foo(ptr noundef writeonly captures(address) %BM_tab, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @func6() #5
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  %add.ptr = getelementptr inbounds nuw i8, ptr %BM_tab, i64 1024
  %cmp.not13 = icmp eq ptr %add.ptr, %0
  br i1 %cmp.not13, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %entry
  %BM_tab.addr.014 = phi ptr [ %incdec.ptr4, %while.body ], [ %add.ptr, %entry ]
  %incdec.ptr = getelementptr inbounds i8, ptr %BM_tab.addr.014, i64 -4
  store i32 %j, ptr %incdec.ptr, align 4, !tbaa !5
  %incdec.ptr2 = getelementptr inbounds i8, ptr %BM_tab.addr.014, i64 -8
  store i32 %j, ptr %incdec.ptr2, align 4, !tbaa !5
  %incdec.ptr3 = getelementptr inbounds i8, ptr %BM_tab.addr.014, i64 -12
  store i32 %j, ptr %incdec.ptr3, align 4, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds i8, ptr %BM_tab.addr.014, i64 -16
  store i32 %j, ptr %incdec.ptr4, align 4, !tbaa !5
  %cmp.not = icmp eq ptr %incdec.ptr4, %0
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @func6(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %BM_tab = alloca [256 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %BM_tab) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %BM_tab, i8 0, i64 1024, i1 false)
  %call.i = tail call i32 (...) @func6() #5
  %conv.i = sext i32 %call.i to i64
  %0 = inttoptr i64 %conv.i to ptr
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %BM_tab, i64 1024
  %cmp.not13.i = icmp eq ptr %add.ptr.i, %0
  br i1 %cmp.not13.i, label %foo.exit, label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %entry
  %BM_tab.addr.014.i = phi ptr [ %incdec.ptr4.i, %while.body.i ], [ %add.ptr.i, %entry ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %BM_tab.addr.014.i, i64 -4
  store i32 6, ptr %incdec.ptr.i, align 4, !tbaa !5
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %BM_tab.addr.014.i, i64 -8
  store i32 6, ptr %incdec.ptr2.i, align 4, !tbaa !5
  %incdec.ptr3.i = getelementptr inbounds i8, ptr %BM_tab.addr.014.i, i64 -12
  store i32 6, ptr %incdec.ptr3.i, align 4, !tbaa !5
  %incdec.ptr4.i = getelementptr inbounds i8, ptr %BM_tab.addr.014.i, i64 -16
  store i32 6, ptr %incdec.ptr4.i, align 4, !tbaa !5
  %cmp.not.i = icmp eq ptr %incdec.ptr4.i, %0
  br i1 %cmp.not.i, label %foo.exit, label %while.body.i, !llvm.loop !9

foo.exit:                                         ; preds = %while.body.i, %entry
  %1 = load i32, ptr %BM_tab, align 16, !tbaa !5
  %cmp.not = icmp eq i32 %1, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %foo.exit
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %BM_tab) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
