; 185446025964865542790939067150401016894
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/185446025964865542790939067150401016894.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/185446025964865542790939067150401016894.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.U = type { [0 x i64] }

@t = dso_local local_unnamed_addr global { i8, i8, i8, i8, [4 x i8], <{ i64, i64, i64, i64, [96 x i64] }> } { i8 26, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, <{ i64, i64, i64, i64, [96 x i64] }> <{ i64 0, i64 21, i64 22, i64 23, [96 x i64] zeroinitializer }> }, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @foo(ptr readonly captures(none) %x) local_unnamed_addr #0 {
entry:
  %d.i = alloca %struct.U, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d.i)
  %0 = load i64, ptr %d.i, align 8, !tbaa !5
  %cmp.not.i = icmp eq i64 %0, 21
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds nuw i8, ptr %d.i, i64 8
  %1 = load i64, ptr %arrayidx2.i, align 8, !tbaa !5
  %cmp3.not.i = icmp eq i64 %1, 22
  br i1 %cmp3.not.i, label %lor.lhs.false4.i, label %if.then.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx6.i = getelementptr inbounds nuw i8, ptr %d.i, i64 16
  %2 = load i64, ptr %arrayidx6.i, align 8, !tbaa !5
  %cmp7.not.i = icmp eq i64 %2, 23
  br i1 %cmp7.not.i, label %bar.exit, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false4.i, %lor.lhs.false.i, %entry
  tail call void @abort() #5
  unreachable

bar.exit:                                         ; preds = %lor.lhs.false4.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d.i)
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @bar(i32 noundef %m) local_unnamed_addr #0 {
entry:
  %d = alloca %struct.U, align 8
  %0 = load i64, ptr %d, align 8, !tbaa !5
  %cmp.not = icmp eq i64 %0, 21
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %d, i64 8
  %1 = load i64, ptr %arrayidx2, align 8, !tbaa !5
  %cmp3.not = icmp eq i64 %1, 22
  br i1 %cmp3.not, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %d, i64 16
  %2 = load i64, ptr %arrayidx6, align 8, !tbaa !5
  %cmp7.not = icmp eq i64 %2, 23
  br i1 %cmp7.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @baz(ptr readonly captures(none) %x) local_unnamed_addr #0 {
entry:
  %d.i = alloca %struct.U, align 8
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %d.i)
  %0 = load i64, ptr %d.i, align 8, !tbaa !5
  %cmp.not.i = icmp eq i64 %0, 21
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr inbounds nuw i8, ptr %d.i, i64 8
  %1 = load i64, ptr %arrayidx2.i, align 8, !tbaa !5
  %cmp3.not.i = icmp eq i64 %1, 22
  br i1 %cmp3.not.i, label %lor.lhs.false4.i, label %if.then.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx6.i = getelementptr inbounds nuw i8, ptr %d.i, i64 16
  %2 = load i64, ptr %arrayidx6.i, align 8, !tbaa !5
  %cmp7.not.i = icmp eq i64 %2, 23
  br i1 %cmp7.not.i, label %bar.exit, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false4.i, %lor.lhs.false.i, %entry
  tail call void @abort() #5
  unreachable

bar.exit:                                         ; preds = %lor.lhs.false4.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %d.i)
  ret ptr null
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call = tail call ptr @baz(ptr nonnull poison)
  %call1 = tail call ptr @foo(ptr nonnull poison)
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
