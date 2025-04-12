; 1357368163363841270414310912932565525
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/1357368163363841270414310912932565525.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/1357368163363841270414310912932565525.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [0 x i8], i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@cell = dso_local local_unnamed_addr global %struct.s zeroinitializer, align 4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @check(i32 %p.coerce) local_unnamed_addr #0 {
entry:
  %p = alloca %struct.s, align 4
  store i32 %p.coerce, ptr %p, align 4
  %cmp.not = icmp eq i32 %p.coerce, 99
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %p, ptr noundef nonnull dereferenceable(11) @.str) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %p.i = alloca %struct.s, align 4
  store i32 99, ptr @cell, align 4, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) @cell, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false) #7
  %0 = load i32, ptr @cell, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i)
  store i32 %0, ptr %p.i, align 4
  %cmp.not.i = icmp eq i32 %0, 99
  br i1 %cmp.not.i, label %if.end.i, label %if.then.critedge

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %p.i, ptr noundef nonnull dereferenceable(11) @.str) #7
  %1 = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i)
  br i1 %1, label %if.end, label %if.then

if.then.critedge:                                 ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i)
  br label %if.then

if.then:                                          ; preds = %if.then.critedge, %if.end.i
  tail call void @abort() #8
  unreachable

if.end:                                           ; preds = %if.end.i
  tail call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #6

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !9, i64 0}
!6 = !{!"s", !7, i64 0, !9, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
