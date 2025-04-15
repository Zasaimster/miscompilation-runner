; 104009055337710011025898303224359233164
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/104009055337710011025898303224359233164_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/104009055337710011025898303224359233164.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"aab\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %out = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #2
  br label %while.body.i.outer

while.body.i.outer:                               ; preds = %cleanup.i, %entry
  %in.addr.0.i.ph = phi ptr [ %in.addr.2.i, %cleanup.i ], [ @.str, %entry ]
  %out.addr.0.i.ph = phi ptr [ %out.addr.2.i, %cleanup.i ], [ %out, %entry ]
  %0 = load i8, ptr %in.addr.0.i.ph, align 1, !tbaa !5
  %cmp.i = icmp eq i8 %0, 97
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.i.outer
  br i1 %cmp.i, label %while.cond2.i, label %while.body.i, !llvm.loop !8

while.cond2.i:                                    ; preds = %while.cond2.i, %while.body.i
  %in.addr.0.pn.i = phi ptr [ %p.0.i, %while.cond2.i ], [ %in.addr.0.i.ph, %while.body.i ]
  %p.0.i = getelementptr inbounds nuw i8, ptr %in.addr.0.pn.i, i64 1
  %1 = load i8, ptr %p.0.i, align 1, !tbaa !5
  %cmp4.i = icmp eq i8 %1, 120
  br i1 %cmp4.i, label %while.cond2.i, label %while.end.i, !llvm.loop !10

while.end.i:                                      ; preds = %while.cond2.i
  %cmp8.not.i = icmp ne i8 %1, 98
  %cmp1226.i = icmp ult ptr %in.addr.0.i.ph, %p.0.i
  %or.cond = and i1 %cmp8.not.i, %cmp1226.i
  br i1 %or.cond, label %while.body14.i, label %cleanup.i

while.body14.i:                                   ; preds = %while.body14.i, %while.end.i
  %out.addr.128.i = phi ptr [ %incdec.ptr16.i, %while.body14.i ], [ %out.addr.0.i.ph, %while.end.i ]
  %in.addr.127.i = phi ptr [ %incdec.ptr15.i, %while.body14.i ], [ %in.addr.0.i.ph, %while.end.i ]
  %incdec.ptr15.i = getelementptr inbounds nuw i8, ptr %in.addr.127.i, i64 1
  %2 = load i8, ptr %in.addr.127.i, align 1, !tbaa !5
  %incdec.ptr16.i = getelementptr inbounds nuw i8, ptr %out.addr.128.i, i64 1
  store i8 %2, ptr %out.addr.128.i, align 1, !tbaa !5
  %cmp12.i = icmp ult ptr %in.addr.127.i, %in.addr.0.pn.i
  br i1 %cmp12.i, label %while.body14.i, label %cleanup.i, !llvm.loop !12

cleanup.i:                                        ; preds = %while.body14.i, %while.end.i
  %in.addr.2.i = phi ptr [ %in.addr.0.i.ph, %while.end.i ], [ %incdec.ptr15.i, %while.body14.i ]
  %out.addr.2.i = phi ptr [ %out.addr.0.i.ph, %while.end.i ], [ %incdec.ptr16.i, %while.body14.i ]
  br i1 %cmp8.not.i, label %while.body.i.outer, label %test.exit, !llvm.loop !8

test.exit:                                        ; preds = %cleanup.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #2
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11, !9}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !9}
