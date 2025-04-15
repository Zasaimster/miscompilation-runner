; 195738817147096824648459812153344139045
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195738817147096824648459812153344139045_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195738817147096824648459812153344139045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 256, align 4
@p = dso_local global ptr @x, align 8
@p1 = dso_local global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @broken_longjmp(ptr noundef readnone captures(none) %p) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test() local_unnamed_addr #1 {
entry:
  %buf = alloca [5 x ptr], align 16
  %q = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q)
  %0 = load volatile ptr, ptr @p, align 8, !tbaa !5
  store volatile ptr %0, ptr %q, align 8, !tbaa !5
  %1 = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %1, ptr %buf, align 16
  %2 = tail call ptr @llvm.stacksave.p0()
  %3 = getelementptr inbounds nuw i8, ptr %buf, i64 16
  store ptr %2, ptr %3, align 16
  %4 = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %buf)
  %5 = load volatile ptr, ptr @p, align 8, !tbaa !5
  %q.0.q.0.q.0.q.0. = load volatile ptr, ptr %q, align 8, !tbaa !5
  %cmp.not = icmp eq ptr %5, %q.0.q.0.q.0.q.0.
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  call void @abort() #7
  unreachable

if.end3:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #4

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @test2() local_unnamed_addr #1 {
entry:
  %buf.i = alloca [5 x ptr], align 16
  %q.i = alloca ptr, align 8
  %q = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q)
  %0 = load volatile ptr, ptr @p, align 8, !tbaa !5
  store volatile ptr %0, ptr %q, align 8, !tbaa !5
  %1 = load volatile i32, ptr @x, align 4, !tbaa !9
  %conv = sext i32 %1 to i64
  %2 = alloca i8, i64 %conv, align 16
  store volatile ptr %2, ptr @p1, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i)
  %3 = load volatile ptr, ptr @p, align 8, !tbaa !5
  store volatile ptr %3, ptr %q.i, align 8, !tbaa !5
  %4 = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %4, ptr %buf.i, align 16
  %5 = call ptr @llvm.stacksave.p0()
  %6 = getelementptr inbounds nuw i8, ptr %buf.i, i64 16
  store ptr %5, ptr %6, align 16
  %7 = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %buf.i)
  %8 = load volatile ptr, ptr @p, align 8, !tbaa !5
  %q.i.0.q.i.0.q.i.0.q.0.q.0.q.0..i = load volatile ptr, ptr %q.i, align 8, !tbaa !5
  %cmp.not.i = icmp eq ptr %8, %q.i.0.q.i.0.q.i.0.q.0.q.0.q.0..i
  br i1 %cmp.not.i, label %test.exit, label %if.then2.i

if.then2.i:                                       ; preds = %entry
  call void @abort() #7
  unreachable

test.exit:                                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf.i) #5
  %9 = load volatile ptr, ptr @p, align 8, !tbaa !5
  %q.0.q.0.q.0.q.0. = load volatile ptr, ptr %q, align 8, !tbaa !5
  %cmp.not = icmp eq ptr %9, %q.0.q.0.q.0.q.0.
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %test.exit
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %test.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %buf.i = alloca [5 x ptr], align 16
  %q.i = alloca ptr, align 8
  %q = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q)
  %0 = load volatile ptr, ptr @p, align 8, !tbaa !5
  store volatile ptr %0, ptr %q, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i)
  %1 = load volatile ptr, ptr @p, align 8, !tbaa !5
  store volatile ptr %1, ptr %q.i, align 8, !tbaa !5
  %2 = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %2, ptr %buf.i, align 16
  %3 = tail call ptr @llvm.stacksave.p0()
  %4 = getelementptr inbounds nuw i8, ptr %buf.i, i64 16
  store ptr %3, ptr %4, align 16
  %5 = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %buf.i)
  %6 = load volatile ptr, ptr @p, align 8, !tbaa !5
  %q.i.0.q.i.0.q.i.0.q.0.q.0.q.0..i = load volatile ptr, ptr %q.i, align 8, !tbaa !5
  %cmp.not.i = icmp eq ptr %6, %q.i.0.q.i.0.q.i.0.q.0.q.0.q.0..i
  br i1 %cmp.not.i, label %test.exit, label %if.then2.i

if.then2.i:                                       ; preds = %entry
  call void @abort() #7
  unreachable

test.exit:                                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf.i) #5
  call void @test2()
  %7 = load volatile ptr, ptr @p, align 8, !tbaa !5
  %q.0.q.0.q.0.q.0. = load volatile ptr, ptr %q, align 8, !tbaa !5
  %cmp.not = icmp eq ptr %7, %q.0.q.0.q.0.q.0.
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %test.exit
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %test.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q)
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
