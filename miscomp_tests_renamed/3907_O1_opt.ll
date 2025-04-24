; 168320608028899237931774045886099650540
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168320608028899237931774045886099650540_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168320608028899237931774045886099650540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { ptr, i32 }

@b = dso_local local_unnamed_addr global i32 1, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global [1 x %struct.B] zeroinitializer, align 16
@a = dso_local global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @foo(ptr noundef readnone captures(none) %x, ptr noundef readonly captures(none) %y, i32 noundef %z) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %y, i64 4
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %0 to i32
  %mul = mul nsw i32 %z, 25
  %add = add nsw i32 %mul, %conv
  store i32 %add, ptr @c, align 4, !tbaa !8
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noalias noundef nonnull ptr @bar(ptr noundef readnone captures(none) %v, i32 noundef %w, i32 noundef %x, ptr noundef readnone captures(none) %y, i32 noundef %z) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %w, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local void @test(ptr noundef readonly captures(none) %x, ptr noundef readonly captures(none) %y) local_unnamed_addr #1 {
entry:
  store i32 5000, ptr @c, align 4, !tbaa !8
  %0 = load i32, ptr @b, align 4, !tbaa !8
  %tobool.not.not = icmp eq i32 %0, 0
  br i1 %tobool.not.not, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end.i:                                         ; preds = %entry
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @d, i64 8), align 8, !tbaa !10
  store ptr @a, ptr @d, align 16, !tbaa !15
  store i32 5000, ptr @c, align 4, !tbaa !8
  %0 = load i32, ptr @b, align 4, !tbaa !8
  %tobool.not.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.not.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end.i.i:                                       ; preds = %entry
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 8}
!11 = !{!"B", !12, i64 0, !9, i64 8}
!12 = !{!"p2 _ZTS1A", !13, i64 0}
!13 = !{!"any p2 pointer", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!11, !12, i64 0}
