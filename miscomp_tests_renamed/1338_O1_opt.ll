; 12379819539965550725666678600683612045
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/12379819539965550725666678600683612045_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/12379819539965550725666678600683612045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"aab\00", align 1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %out = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #3
  %0 = call fastcc ptr @test(ptr noundef %out)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc ptr @test(ptr noundef nonnull writeonly captures(none) %out) unnamed_addr #2 {
entry:
  %call32 = tail call fastcc ptr @test(ptr noundef %out)
  %tobool.not33 = icmp eq ptr %call32, null
  br i1 %tobool.not33, label %while.end19, label %while.body

while.body:                                       ; preds = %if.end18, %entry
  %out.addr.036 = phi ptr [ %out.addr.3, %if.end18 ], [ %out, %entry ]
  %in.addr.035 = phi ptr [ %in.addr.3, %if.end18 ], [ @.str, %entry ]
  %retval.034 = phi ptr [ %retval.2, %if.end18 ], [ undef, %entry ]
  %0 = load i8, ptr %in.addr.035, align 1, !tbaa !5
  %cmp = icmp eq i8 %0, 97
  br i1 %cmp, label %while.cond2, label %if.end18

while.cond2:                                      ; preds = %while.cond2, %while.body
  %in.addr.0.pn = phi ptr [ %p.0, %while.cond2 ], [ %in.addr.035, %while.body ]
  %p.0 = getelementptr inbounds nuw i8, ptr %in.addr.0.pn, i64 1
  %1 = load i8, ptr %p.0, align 1, !tbaa !5
  %cmp4 = icmp eq i8 %1, 120
  br i1 %cmp4, label %while.cond2, label %while.end, !llvm.loop !8

while.end:                                        ; preds = %while.cond2
  %cmp8.not = icmp eq i8 %1, 98
  br i1 %cmp8.not, label %cleanup, label %while.cond11.preheader

while.cond11.preheader:                           ; preds = %while.end
  %cmp1228 = icmp ult ptr %in.addr.035, %p.0
  br i1 %cmp1228, label %while.body14, label %cleanup

while.body14:                                     ; preds = %while.body14, %while.cond11.preheader
  %out.addr.130 = phi ptr [ %incdec.ptr16, %while.body14 ], [ %out.addr.036, %while.cond11.preheader ]
  %in.addr.129 = phi ptr [ %incdec.ptr15, %while.body14 ], [ %in.addr.035, %while.cond11.preheader ]
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %in.addr.129, i64 1
  %2 = load i8, ptr %in.addr.129, align 1, !tbaa !5
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %out.addr.130, i64 1
  store i8 %2, ptr %out.addr.130, align 1, !tbaa !5
  %cmp12 = icmp ult ptr %in.addr.129, %in.addr.0.pn
  br i1 %cmp12, label %while.body14, label %cleanup, !llvm.loop !11

cleanup:                                          ; preds = %while.body14, %while.cond11.preheader, %while.end
  %retval.1 = phi ptr [ %p.0, %while.end ], [ %retval.034, %while.cond11.preheader ], [ %retval.034, %while.body14 ]
  %in.addr.2 = phi ptr [ %in.addr.035, %while.end ], [ %in.addr.035, %while.cond11.preheader ], [ %incdec.ptr15, %while.body14 ]
  %out.addr.2 = phi ptr [ %out.addr.036, %while.end ], [ %out.addr.036, %while.cond11.preheader ], [ %incdec.ptr16, %while.body14 ]
  br i1 %cmp8.not, label %while.end19, label %if.end18

if.end18:                                         ; preds = %cleanup, %while.body
  %retval.2 = phi ptr [ %retval.1, %cleanup ], [ %retval.034, %while.body ]
  %in.addr.3 = phi ptr [ %in.addr.2, %cleanup ], [ %in.addr.035, %while.body ]
  %out.addr.3 = phi ptr [ %out.addr.2, %cleanup ], [ %out.addr.036, %while.body ]
  %call = tail call fastcc ptr @test(ptr noundef %out.addr.3)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.end19, label %while.body, !llvm.loop !12

while.end19:                                      ; preds = %if.end18, %cleanup, %entry
  %retval.3 = phi ptr [ undef, %entry ], [ %retval.2, %if.end18 ], [ %retval.1, %cleanup ]
  ret ptr %retval.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
