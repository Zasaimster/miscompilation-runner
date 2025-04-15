; 169670035209874455290936488565635629463
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169670035209874455290936488565635629463.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169670035209874455290936488565635629463.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@hpart = dso_local local_unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"This function is never called.\0A\00", align 1
@lpart = dso_local local_unnamed_addr global i64 0, align 8
@back = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @build(i64 %h, i64 noundef %l) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sext i32 %call to i64
  store i64 %conv, ptr @hpart, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %0 = load i64, ptr @hpart, align 8, !tbaa !5
  %sh_prom = zext nneg i32 %call1 to i64
  %shl = shl i64 %0, %sh_prom
  store i64 %shl, ptr @hpart, align 8, !tbaa !5
  %and = and i64 %l, 4294967295
  store i64 %and, ptr @lpart, align 8, !tbaa !5
  %or = or i64 %shl, %and
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
  store i64 %conv.i, ptr @hpart, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %0 = load i64, ptr @hpart, align 8, !tbaa !5
  %sh_prom.i = zext nneg i32 %call1.i to i64
  %shl.i = shl i64 %0, %sh_prom.i
  store i64 %shl.i, ptr @hpart, align 8, !tbaa !5
  store i64 1, ptr @lpart, align 8, !tbaa !5
  %or.i = or i64 %shl.i, 1
  store i64 %or.i, ptr @back, align 8, !tbaa !5
  %cmp.not = icmp ult i64 %shl.i, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %call.i45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i46 = sext i32 %call.i45 to i64
  store i64 %conv.i46, ptr @hpart, align 8, !tbaa !5
  %call1.i47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %1 = load i64, ptr @hpart, align 8, !tbaa !5
  %sh_prom.i48 = zext nneg i32 %call1.i47 to i64
  %shl.i49 = shl i64 %1, %sh_prom.i48
  store i64 %shl.i49, ptr @hpart, align 8, !tbaa !5
  store i64 0, ptr @lpart, align 8, !tbaa !5
  store i64 %shl.i49, ptr @back, align 8, !tbaa !5
  %cmp2.not = icmp eq i64 %shl.i49, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #5
  unreachable

if.end4:                                          ; preds = %if.end
  %call.i51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i52 = sext i32 %call.i51 to i64
  store i64 %conv.i52, ptr @hpart, align 8, !tbaa !5
  %call1.i53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %2 = load i64, ptr @hpart, align 8, !tbaa !5
  %sh_prom.i54 = zext nneg i32 %call1.i53 to i64
  %shl.i55 = shl i64 %2, %sh_prom.i54
  store i64 %shl.i55, ptr @hpart, align 8, !tbaa !5
  store i64 4294967295, ptr @lpart, align 8, !tbaa !5
  %or.i56 = or i64 %shl.i55, 4294967295
  store i64 %or.i56, ptr @back, align 8, !tbaa !5
  %cmp6.not = icmp ult i64 %shl.i55, 4294967296
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  tail call void @abort() #5
  unreachable

if.end8:                                          ; preds = %if.end4
  %call.i57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i58 = sext i32 %call.i57 to i64
  store i64 %conv.i58, ptr @hpart, align 8, !tbaa !5
  %call1.i59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %3 = load i64, ptr @hpart, align 8, !tbaa !5
  %sh_prom.i60 = zext nneg i32 %call1.i59 to i64
  %shl.i61 = shl i64 %3, %sh_prom.i60
  store i64 %shl.i61, ptr @hpart, align 8, !tbaa !5
  store i64 4294967294, ptr @lpart, align 8, !tbaa !5
  %or.i62 = or i64 %shl.i61, 4294967294
  store i64 %or.i62, ptr @back, align 8, !tbaa !5
  %cmp10.not = icmp eq i64 %or.i62, 4294967294
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  tail call void @abort() #5
  unreachable

if.end12:                                         ; preds = %if.end8
  %call.i63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i64 = sext i32 %call.i63 to i64
  store i64 %conv.i64, ptr @hpart, align 8, !tbaa !5
  %call1.i65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %4 = load i64, ptr @hpart, align 8, !tbaa !5
  %sh_prom.i66 = zext nneg i32 %call1.i65 to i64
  %shl.i67 = shl i64 %4, %sh_prom.i66
  store i64 %shl.i67, ptr @hpart, align 8, !tbaa !5
  store i64 1, ptr @lpart, align 8, !tbaa !5
  %or.i68 = or i64 %shl.i67, 1
  store i64 %or.i68, ptr @back, align 8, !tbaa !5
  %cmp14.not = icmp eq i64 %or.i68, 4294967297
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  tail call void @abort() #5
  unreachable

if.end16:                                         ; preds = %if.end12
  %call.i69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i70 = sext i32 %call.i69 to i64
  store i64 %conv.i70, ptr @hpart, align 8, !tbaa !5
  %call1.i71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %5 = load i64, ptr @hpart, align 8, !tbaa !5
  %sh_prom.i72 = zext nneg i32 %call1.i71 to i64
  %shl.i73 = shl i64 %5, %sh_prom.i72
  store i64 %shl.i73, ptr @hpart, align 8, !tbaa !5
  store i64 0, ptr @lpart, align 8, !tbaa !5
  store i64 %shl.i73, ptr @back, align 8, !tbaa !5
  %cmp18.not = icmp eq i64 %shl.i73, 4294967296
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  tail call void @abort() #5
  unreachable

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i64 @build(i64 poison, i64 noundef 4294967295)
  %cmp22.not = icmp eq i64 %call21, 8589934591
  br i1 %cmp22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  tail call void @abort() #5
  unreachable

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i64 @build(i64 poison, i64 noundef 4294967294)
  %cmp26.not = icmp eq i64 %call25, 8589934590
  br i1 %cmp26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  tail call void @abort() #5
  unreachable

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i64 @build(i64 poison, i64 noundef 1)
  %cmp30.not = icmp eq i64 %call29, -4294967295
  br i1 %cmp30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  tail call void @abort() #5
  unreachable

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i64 @build(i64 poison, i64 noundef 0)
  %cmp34.not = icmp eq i64 %call33, -4294967296
  br i1 %cmp34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  tail call void @abort() #5
  unreachable

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i64 @build(i64 poison, i64 noundef 4294967295)
  %cmp38.not = icmp eq i64 %call37, -1
  br i1 %cmp38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end36
  tail call void @abort() #5
  unreachable

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i64 @build(i64 poison, i64 noundef 4294967294)
  %cmp42.not = icmp eq i64 %call41, -2
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
