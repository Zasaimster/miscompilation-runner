; 192310869780684709920387732414731524240
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192310869780684709920387732414731524240.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192310869780684709920387732414731524240.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"copied string is %s\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %destarray = alloca [10 x i8], align 1
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i8 [ 104, %entry ], [ %1, %for.body ]
  %b.021.idx = phi i64 [ 0, %entry ], [ %b.021.add, %for.body ]
  %conv2 = sext i8 %0 to i32
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %conv2, i32 noundef %conv2)
  %b.021.add = add nuw nsw i64 %b.021.idx, 1
  %incdec.ptr.ptr = getelementptr inbounds nuw i8, ptr @.str, i64 %b.021.add
  %1 = load i8, ptr %incdec.ptr.ptr, align 1, !tbaa !5
  %exitcond = icmp eq i64 %b.021.add, 5
  br i1 %exitcond, label %for.end, label %for.body, !llvm.loop !8

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %destarray) #4
  br label %while.body

while.body:                                       ; preds = %for.end, %while.body
  %2 = phi i8 [ 104, %for.end ], [ %3, %while.body ]
  %src.023.idx = phi i64 [ 0, %for.end ], [ %src.023.add, %while.body ]
  %dest.022 = phi ptr [ %destarray, %for.end ], [ %incdec.ptr11, %while.body ]
  %src.023.add = add nuw nsw i64 %src.023.idx, 1
  %incdec.ptr10.ptr = getelementptr inbounds nuw i8, ptr @.str, i64 %src.023.add
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %dest.022, i64 1
  store i8 %2, ptr %dest.022, align 1, !tbaa !5
  %3 = load i8, ptr %incdec.ptr10.ptr, align 1, !tbaa !5
  %exitcond24 = icmp eq i64 %src.023.add, 5
  br i1 %exitcond24, label %while.end, label %while.body, !llvm.loop !11

while.end:                                        ; preds = %while.body
  store i8 0, ptr %incdec.ptr11, align 1, !tbaa !5
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %destarray)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %destarray) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
