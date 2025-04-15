; 107098746410123584919417282620210591046
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/107098746410123584919417282620210591046_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/107098746410123584919417282620210591046.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @add(ptr noundef readonly captures(none) %key, ptr noundef readonly captures(none) %table) local_unnamed_addr #0 {
entry:
  %0 = load double, ptr %key, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %cleanup ]
  %idx.ext = zext i32 %i.0 to i64
  %add.ptr = getelementptr inbounds nuw double, ptr %table, i64 %idx.ext
  %1 = load double, ptr %add.ptr, align 8, !tbaa !5
  %cmp = fcmp une double %1, %0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %while.cond
  %cmp2 = fcmp une double %1, 0x7FF0000000000000
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  tail call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.end
  %inc = add i32 %i.0, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %while.cond
  %i.1 = phi i32 [ %inc, %if.end6 ], [ %i.0, %while.cond ]
  br i1 %cmp, label %while.cond, label %if.end9

if.end9:                                          ; preds = %cleanup
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %table = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %table) #4
  store double 0x7FF0000000000000, ptr %table, align 16, !tbaa !5
  %arrayinit.element = getelementptr inbounds nuw i8, ptr %table, i64 8
  store double 2.300000e+01, ptr %arrayinit.element, align 8, !tbaa !5
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %i.1.i, %cleanup.i ]
  %idx.ext.i = zext i32 %i.0.i to i64
  %add.ptr.i = getelementptr inbounds nuw double, ptr %table, i64 %idx.ext.i
  %0 = load double, ptr %add.ptr.i, align 8, !tbaa !5
  %cmp.i = fcmp une double %0, 2.300000e+01
  br i1 %cmp.i, label %if.end.i, label %cleanup.i

if.end.i:                                         ; preds = %while.cond.i
  %cmp2.i = fcmp une double %0, 0x7FF0000000000000
  br i1 %cmp2.i, label %if.then3.i, label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  tail call void @abort() #3
  unreachable

if.end6.i:                                        ; preds = %if.end.i
  %inc.i = add i32 %i.0.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end6.i, %while.cond.i
  %i.1.i = phi i32 [ %inc.i, %if.end6.i ], [ %i.0.i, %while.cond.i ]
  br i1 %cmp.i, label %while.cond.i, label %add.exit

add.exit:                                         ; preds = %cleanup.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %table) #4
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
