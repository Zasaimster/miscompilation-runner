; 129233528091905231754516940935969669246
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129233528091905231754516940935969669246_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129233528091905231754516940935969669246.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DummyStruct = type { ptr, i32 }

@.str = private unnamed_addr constant [28 x i8] c"&S1 = %p\09&S2 = %p\09&S3 = %p\0A\00", align 1
@testAllocaOrder.count = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @AddCounts(ptr noundef %S1, ptr noundef %S2, ptr noundef %S3, i32 noundef %noPrint) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %noPrint, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %S1, ptr noundef %S2, ptr noundef %S3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 (...) @deadFunction() #5
  %seqnum = getelementptr inbounds nuw i8, ptr %S1, i64 8
  %0 = load i32, ptr %seqnum, align 8, !tbaa !5
  %seqnum2 = getelementptr inbounds nuw i8, ptr %S2, i64 8
  %1 = load i32, ptr %seqnum2, align 8, !tbaa !5
  %add = add nsw i32 %1, %0
  %seqnum3 = getelementptr inbounds nuw i8, ptr %S3, i64 8
  %2 = load i32, ptr %seqnum3, align 8, !tbaa !5
  %add4 = add nsw i32 %add, %2
  ret i32 %add4
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

declare i32 @deadFunction(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @testAllocaOrder(i32 noundef %noPrint) local_unnamed_addr #0 {
entry:
  %S1 = alloca %struct.DummyStruct, align 8
  %S2 = alloca %struct.DummyStruct, align 8
  %S3 = alloca %struct.DummyStruct, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %S1) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %S2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %S3) #5
  %0 = load i32, ptr @testAllocaOrder.count, align 4, !tbaa !12
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @testAllocaOrder.count, align 4, !tbaa !12
  %seqnum = getelementptr inbounds nuw i8, ptr %S1, i64 8
  store i32 %inc, ptr %seqnum, align 8, !tbaa !5
  %inc1 = add nsw i32 %0, 2
  store i32 %inc1, ptr @testAllocaOrder.count, align 4, !tbaa !12
  %seqnum2 = getelementptr inbounds nuw i8, ptr %S2, i64 8
  store i32 %inc1, ptr %seqnum2, align 8, !tbaa !5
  %inc3 = add nsw i32 %0, 3
  store i32 %inc3, ptr @testAllocaOrder.count, align 4, !tbaa !12
  %seqnum4 = getelementptr inbounds nuw i8, ptr %S3, i64 8
  store i32 %inc3, ptr %seqnum4, align 8, !tbaa !5
  %tobool.not.i = icmp eq i32 %noPrint, 0
  br i1 %tobool.not.i, label %if.then.i, label %AddCounts.exit

if.then.i:                                        ; preds = %entry
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %S1, ptr noundef nonnull %S2, ptr noundef nonnull %S3)
  br label %AddCounts.exit

AddCounts.exit:                                   ; preds = %if.then.i, %entry
  %call1.i = call i32 (...) @deadFunction() #5
  %1 = load i32, ptr %seqnum, align 8, !tbaa !5
  %2 = load i32, ptr %seqnum2, align 8, !tbaa !5
  %add.i = add nsw i32 %2, %1
  %3 = load i32, ptr %seqnum4, align 8, !tbaa !5
  %add4.i = add nsw i32 %add.i, %3
  %call5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add4.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S1) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %S1.i = alloca %struct.DummyStruct, align 8
  %S2.i = alloca %struct.DummyStruct, align 8
  %S3.i = alloca %struct.DummyStruct, align 8
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %argv, i64 8
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !13
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.2) #5
  %tobool.not.not = icmp eq i32 %call, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %noPrint.0 = phi i1 [ false, %entry ], [ %tobool.not.not, %land.lhs.true ]
  %seqnum.i = getelementptr inbounds nuw i8, ptr %S1.i, i64 8
  %seqnum2.i = getelementptr inbounds nuw i8, ptr %S2.i, i64 8
  %seqnum4.i = getelementptr inbounds nuw i8, ptr %S3.i, i64 8
  br label %for.body

for.body:                                         ; preds = %testAllocaOrder.exit, %if.end
  %i.03 = phi i32 [ 0, %if.end ], [ %inc, %testAllocaOrder.exit ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %S1.i) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %S2.i) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %S3.i) #5
  %1 = load i32, ptr @testAllocaOrder.count, align 4, !tbaa !12
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, ptr @testAllocaOrder.count, align 4, !tbaa !12
  store i32 %inc.i, ptr %seqnum.i, align 8, !tbaa !5
  %inc1.i = add nsw i32 %1, 2
  store i32 %inc1.i, ptr @testAllocaOrder.count, align 4, !tbaa !12
  store i32 %inc1.i, ptr %seqnum2.i, align 8, !tbaa !5
  %inc3.i = add nsw i32 %1, 3
  store i32 %inc3.i, ptr @testAllocaOrder.count, align 4, !tbaa !12
  store i32 %inc3.i, ptr %seqnum4.i, align 8, !tbaa !5
  br i1 %noPrint.0, label %if.then.i.i, label %testAllocaOrder.exit

if.then.i.i:                                      ; preds = %for.body
  %call.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %S1.i, ptr noundef nonnull %S2.i, ptr noundef nonnull %S3.i)
  br label %testAllocaOrder.exit

testAllocaOrder.exit:                             ; preds = %if.then.i.i, %for.body
  %call1.i.i = call i32 (...) @deadFunction() #5
  %2 = load i32, ptr %seqnum.i, align 8, !tbaa !5
  %3 = load i32, ptr %seqnum2.i, align 8, !tbaa !5
  %add.i.i = add nsw i32 %3, %2
  %4 = load i32, ptr %seqnum4.i, align 8, !tbaa !5
  %add4.i.i = add nsw i32 %add.i.i, %4
  %call5.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add4.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S3.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S2.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %S1.i) #5
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %testAllocaOrder.exit
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !11, i64 8}
!6 = !{!"DummyStruct", !7, i64 0, !11, i64 8}
!7 = !{!"p1 _ZTS11DummyStruct", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !8, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
