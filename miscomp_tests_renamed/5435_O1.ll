; 196179379779579374726005385533918608489
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/196179379779579374726005385533918608489.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/196179379779579374726005385533918608489.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @foo(ptr noundef writeonly captures(address) %BM_tab, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %add.ptr = getelementptr inbounds nuw i8, ptr %BM_tab, i64 1024
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %BM_tab.addr.013 = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr3, %while.body ]
  %incdec.ptr = getelementptr inbounds i8, ptr %BM_tab.addr.013, i64 -4
  store i32 %j, ptr %incdec.ptr, align 4, !tbaa !5
  %incdec.ptr1 = getelementptr inbounds i8, ptr %BM_tab.addr.013, i64 -8
  store i32 %j, ptr %incdec.ptr1, align 4, !tbaa !5
  %incdec.ptr2 = getelementptr inbounds i8, ptr %BM_tab.addr.013, i64 -12
  store i32 %j, ptr %incdec.ptr2, align 4, !tbaa !5
  %incdec.ptr3 = getelementptr inbounds i8, ptr %BM_tab.addr.013, i64 -16
  store i32 %j, ptr %incdec.ptr3, align 4, !tbaa !5
  %cmp.not = icmp eq ptr %BM_tab, %incdec.ptr3
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %while.body
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @example9() local_unnamed_addr #2 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 55)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %BM_tab = alloca [256 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %BM_tab) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %BM_tab, i8 0, i64 1024, i1 false)
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %BM_tab, i64 1024
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %entry
  %BM_tab.addr.013.i = phi ptr [ %add.ptr.i, %entry ], [ %incdec.ptr3.i, %while.body.i ]
  %incdec.ptr.i = getelementptr inbounds i8, ptr %BM_tab.addr.013.i, i64 -4
  store i32 6, ptr %incdec.ptr.i, align 4, !tbaa !5
  %incdec.ptr1.i = getelementptr inbounds i8, ptr %BM_tab.addr.013.i, i64 -8
  store i32 6, ptr %incdec.ptr1.i, align 4, !tbaa !5
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %BM_tab.addr.013.i, i64 -12
  store i32 6, ptr %incdec.ptr2.i, align 4, !tbaa !5
  %incdec.ptr3.i = getelementptr inbounds i8, ptr %BM_tab.addr.013.i, i64 -16
  store i32 6, ptr %incdec.ptr3.i, align 4, !tbaa !5
  %cmp.not.i = icmp eq ptr %BM_tab, %incdec.ptr3.i
  br i1 %cmp.not.i, label %foo.exit, label %while.body.i, !llvm.loop !9

foo.exit:                                         ; preds = %while.body.i
  %0 = load i32, ptr %BM_tab, align 16, !tbaa !5
  %cmp.not = icmp eq i32 %0, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %foo.exit
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %BM_tab) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
