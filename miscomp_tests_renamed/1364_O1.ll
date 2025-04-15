; 112245961665334935686819601064780103464
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/112245961665334935686819601064780103464.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/112245961665334935686819601064780103464.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@hpart = dso_local local_unnamed_addr global i64 0, align 8
@lpart = dso_local local_unnamed_addr global i64 0, align 8
@back = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @build(i64 noundef %h, i64 noundef %l) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sext i32 %call to i64
  %shl = shl nsw i64 %conv, 32
  store i64 %shl, ptr @hpart, align 8, !tbaa !5
  %and = and i64 %l, 4294967295
  store i64 %and, ptr @lpart, align 8, !tbaa !5
  %or = or disjoint i64 %shl, %and
  store i64 %or, ptr @back, align 8, !tbaa !5
  ret i64 %or
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i = sext i32 %call.i to i64
  %shl.i = shl nsw i64 %conv.i, 32
  store i64 %shl.i, ptr @hpart, align 8, !tbaa !5
  store i64 1, ptr @lpart, align 8, !tbaa !5
  %or.i = or disjoint i64 %shl.i, 1
  store i64 %or.i, ptr @back, align 8, !tbaa !5
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %call.i45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i46 = sext i32 %call.i45 to i64
  %shl.i47 = shl nsw i64 %conv.i46, 32
  store i64 %shl.i47, ptr @hpart, align 8, !tbaa !5
  store i64 0, ptr @lpart, align 8, !tbaa !5
  store i64 %shl.i47, ptr @back, align 8, !tbaa !5
  %cmp2.not = icmp eq i32 %call.i45, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #5
  unreachable

if.end4:                                          ; preds = %if.end
  %call.i49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i50 = sext i32 %call.i49 to i64
  %shl.i51 = shl nsw i64 %conv.i50, 32
  store i64 %shl.i51, ptr @hpart, align 8, !tbaa !5
  store i64 4294967295, ptr @lpart, align 8, !tbaa !5
  %or.i52 = or disjoint i64 %shl.i51, 4294967295
  store i64 %or.i52, ptr @back, align 8, !tbaa !5
  %cmp6.not = icmp eq i32 %call.i49, 0
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  tail call void @abort() #5
  unreachable

if.end8:                                          ; preds = %if.end4
  %call.i53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i54 = sext i32 %call.i53 to i64
  %shl.i55 = shl nsw i64 %conv.i54, 32
  store i64 %shl.i55, ptr @hpart, align 8, !tbaa !5
  store i64 4294967294, ptr @lpart, align 8, !tbaa !5
  %or.i56 = or disjoint i64 %shl.i55, 4294967294
  store i64 %or.i56, ptr @back, align 8, !tbaa !5
  %cmp10.not = icmp eq i32 %call.i53, 0
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  tail call void @abort() #5
  unreachable

if.end12:                                         ; preds = %if.end8
  %call.i57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i58 = sext i32 %call.i57 to i64
  %shl.i59 = shl nsw i64 %conv.i58, 32
  store i64 %shl.i59, ptr @hpart, align 8, !tbaa !5
  store i64 1, ptr @lpart, align 8, !tbaa !5
  %or.i60 = or disjoint i64 %shl.i59, 1
  store i64 %or.i60, ptr @back, align 8, !tbaa !5
  %cmp14.not = icmp eq i32 %call.i57, 1
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  tail call void @abort() #5
  unreachable

if.end16:                                         ; preds = %if.end12
  %call.i61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i62 = sext i32 %call.i61 to i64
  %shl.i63 = shl nsw i64 %conv.i62, 32
  store i64 %shl.i63, ptr @hpart, align 8, !tbaa !5
  store i64 0, ptr @lpart, align 8, !tbaa !5
  store i64 %shl.i63, ptr @back, align 8, !tbaa !5
  %cmp18.not = icmp eq i32 %call.i61, 1
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  tail call void @abort() #5
  unreachable

if.end20:                                         ; preds = %if.end16
  %call.i65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i66 = sext i32 %call.i65 to i64
  %shl.i67 = shl nsw i64 %conv.i66, 32
  store i64 %shl.i67, ptr @hpart, align 8, !tbaa !5
  store i64 4294967295, ptr @lpart, align 8, !tbaa !5
  %or.i68 = or disjoint i64 %shl.i67, 4294967295
  store i64 %or.i68, ptr @back, align 8, !tbaa !5
  %cmp22.not = icmp eq i32 %call.i65, 1
  br i1 %cmp22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  tail call void @abort() #5
  unreachable

if.end24:                                         ; preds = %if.end20
  %call.i69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i70 = sext i32 %call.i69 to i64
  %shl.i71 = shl nsw i64 %conv.i70, 32
  store i64 %shl.i71, ptr @hpart, align 8, !tbaa !5
  store i64 4294967294, ptr @lpart, align 8, !tbaa !5
  %or.i72 = or disjoint i64 %shl.i71, 4294967294
  store i64 %or.i72, ptr @back, align 8, !tbaa !5
  %cmp26.not = icmp eq i32 %call.i69, 1
  br i1 %cmp26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  tail call void @abort() #5
  unreachable

if.end28:                                         ; preds = %if.end24
  %call.i73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i74 = sext i32 %call.i73 to i64
  %shl.i75 = shl nsw i64 %conv.i74, 32
  store i64 %shl.i75, ptr @hpart, align 8, !tbaa !5
  store i64 1, ptr @lpart, align 8, !tbaa !5
  %or.i76 = or disjoint i64 %shl.i75, 1
  store i64 %or.i76, ptr @back, align 8, !tbaa !5
  %cmp30.not = icmp eq i32 %call.i73, -1
  br i1 %cmp30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  tail call void @abort() #5
  unreachable

if.end32:                                         ; preds = %if.end28
  %call.i77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i78 = sext i32 %call.i77 to i64
  %shl.i79 = shl nsw i64 %conv.i78, 32
  store i64 %shl.i79, ptr @hpart, align 8, !tbaa !5
  store i64 0, ptr @lpart, align 8, !tbaa !5
  store i64 %shl.i79, ptr @back, align 8, !tbaa !5
  %cmp34.not = icmp eq i32 %call.i77, -1
  br i1 %cmp34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  tail call void @abort() #5
  unreachable

if.end36:                                         ; preds = %if.end32
  %call.i81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i82 = sext i32 %call.i81 to i64
  %shl.i83 = shl nsw i64 %conv.i82, 32
  store i64 %shl.i83, ptr @hpart, align 8, !tbaa !5
  store i64 4294967295, ptr @lpart, align 8, !tbaa !5
  %or.i84 = or disjoint i64 %shl.i83, 4294967295
  store i64 %or.i84, ptr @back, align 8, !tbaa !5
  %cmp38.not = icmp eq i32 %call.i81, -1
  br i1 %cmp38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end36
  tail call void @abort() #5
  unreachable

if.end40:                                         ; preds = %if.end36
  %call.i85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i86 = sext i32 %call.i85 to i64
  %shl.i87 = shl nsw i64 %conv.i86, 32
  store i64 %shl.i87, ptr @hpart, align 8, !tbaa !5
  store i64 4294967294, ptr @lpart, align 8, !tbaa !5
  %or.i88 = or disjoint i64 %shl.i87, 4294967294
  store i64 %or.i88, ptr @back, align 8, !tbaa !5
  %cmp42.not = icmp eq i32 %call.i85, -1
  br i1 %cmp42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40
  tail call void @abort() #5
  unreachable

if.end44:                                         ; preds = %if.end40
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"long long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
