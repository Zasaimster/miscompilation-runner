; 156466989632580825164839443314249854938
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/156466989632580825164839443314249854938_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/156466989632580825164839443314249854938.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [20 x i8] c"A is greater than 5\00", align 1
@str.2 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @a1() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @count, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @count, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @b(i64 noundef %data) local_unnamed_addr #1 {
entry:
  %cmp = icmp ugt i64 %data, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = and i64 %data, 1073741824
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = load i32, ptr @count, align 4, !tbaa !5
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, ptr @count, align 4, !tbaa !5
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %2 = and i64 %data, 536870912
  %tobool5.not = icmp eq i64 %2, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end2
  %3 = load i32, ptr @count, align 4, !tbaa !5
  %inc.i12 = add nsw i32 %3, 1
  store i32 %inc.i12, ptr @count, align 4, !tbaa !5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end2
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i32 0, ptr @count, align 4, !tbaa !5
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i32, ptr @count, align 4, !tbaa !5
  %cmp1.not = icmp eq i32 %0, 1
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end3:                                          ; preds = %entry
  store i32 0, ptr @count, align 4, !tbaa !5
  %puts.i22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %1 = load i32, ptr @count, align 4, !tbaa !5
  %inc.i.i = add nsw i32 %1, 1
  store i32 %inc.i.i, ptr @count, align 4, !tbaa !5
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @abort() #6
  unreachable

if.end6:                                          ; preds = %if.end3
  store i32 0, ptr @count, align 4, !tbaa !5
  %puts.i23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = load i32, ptr @count, align 4, !tbaa !5
  %inc.i12.i = add nsw i32 %2, 1
  store i32 %inc.i12.i, ptr @count, align 4, !tbaa !5
  %cmp7.not = icmp eq i32 %2, 0
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  tail call void @abort() #6
  unreachable

if.end9:                                          ; preds = %if.end6
  store i32 0, ptr @count, align 4, !tbaa !5
  %puts.i24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %3 = load i32, ptr @count, align 4, !tbaa !5
  %inc.i.i25 = add nsw i32 %3, 1
  store i32 %inc.i.i25, ptr @count, align 4, !tbaa !5
  %cmp10.not = icmp eq i32 %inc.i.i25, 2
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void @abort() #6
  unreachable

if.end12:                                         ; preds = %if.end9
  store i32 0, ptr @count, align 4, !tbaa !5
  %puts.i26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %4 = load i32, ptr @count, align 4, !tbaa !5
  %inc.i12.i27 = add nsw i32 %4, 1
  store i32 %inc.i12.i27, ptr @count, align 4, !tbaa !5
  %cmp13.not = icmp eq i32 %inc.i12.i27, 2
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  tail call void @abort() #6
  unreachable

if.end15:                                         ; preds = %if.end12
  store i32 0, ptr @count, align 4, !tbaa !5
  %puts.i28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = load i32, ptr @count, align 4, !tbaa !5
  %inc.i12.i30 = add nsw i32 %5, 2
  store i32 %inc.i12.i30, ptr @count, align 4, !tbaa !5
  %cmp16.not = icmp eq i32 %5, 0
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  tail call void @abort() #6
  unreachable

if.end18:                                         ; preds = %if.end15
  store i32 0, ptr @count, align 4, !tbaa !5
  %puts.i31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %6 = load i32, ptr @count, align 4, !tbaa !5
  %inc.i12.i33 = add nsw i32 %6, 2
  store i32 %inc.i12.i33, ptr @count, align 4, !tbaa !5
  %cmp19.not = icmp eq i32 %inc.i12.i33, 3
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end18
  tail call void @abort() #6
  unreachable

if.end21:                                         ; preds = %if.end18
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
