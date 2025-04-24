; 143666066916043269054858055531297817156
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/143666066916043269054858055531297817156_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/143666066916043269054858055531297817156.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_t = type { float, float }
%struct.struct_list = type { float }

@pos = dso_local global [1 x %struct.vector_t] zeroinitializer, align 4
@limit = dso_local global [2 x %struct.vector_t] [%struct.vector_t zeroinitializer, %struct.vector_t { float 1.000000e+00, float 1.000000e+00 }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @w(float noundef %x, float noundef %y) local_unnamed_addr #0 {
entry:
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f1(float noundef %x, float noundef %y) local_unnamed_addr #1 {
entry:
  %cmp = fcmp une float %y, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret i32 undef
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f2(float noundef %x, float noundef %y) local_unnamed_addr #1 {
entry:
  %cmp = fcmp une float %x, 1.000000e+00
  %cmp1 = fcmp une float %y, 1.000000e+00
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @gitter(i32 %count, ptr noundef readonly captures(none) %pos, ptr noundef writeonly captures(none) %list, ptr noundef writeonly captures(none) %nww, ptr noundef readonly captures(none) %limit, float noundef %r) local_unnamed_addr #1 {
entry:
  %y = getelementptr inbounds nuw i8, ptr %limit, i64 4
  %0 = load float, ptr %y, align 4, !tbaa !5
  %cmp.i = fcmp une float %0, 0.000000e+00
  br i1 %cmp.i, label %if.then.i, label %f1.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #6
  unreachable

f1.exit:                                          ; preds = %entry
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %limit, i64 8
  %1 = load float, ptr %arrayidx2, align 4, !tbaa !10
  %y5 = getelementptr inbounds nuw i8, ptr %limit, i64 12
  %2 = load float, ptr %y5, align 4, !tbaa !5
  %cmp.i27 = fcmp une float %1, 1.000000e+00
  %cmp1.i = fcmp une float %2, 1.000000e+00
  %or.cond.i = or i1 %cmp.i27, %cmp1.i
  br i1 %or.cond.i, label %if.then.i28, label %f2.exit

if.then.i28:                                      ; preds = %f1.exit
  tail call void @abort() #6
  unreachable

f2.exit:                                          ; preds = %f1.exit
  store i32 0, ptr %nww, align 4, !tbaa !11
  %3 = load float, ptr %pos, align 4, !tbaa !10
  %cmp = fcmp ugt float %3, 0.000000e+00
  br i1 %cmp, label %if.end18, label %if.then

if.then:                                          ; preds = %f2.exit
  %conv = fpext float %3 to double
  %conv12 = fpext float %r to double
  %mul = fmul double %conv12, 5.000000e-01
  %cmp13 = fcmp ult double %mul, %conv
  br i1 %cmp13, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.then
  store float 1.000000e+00, ptr %list, align 4, !tbaa !13
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then, %f2.exit
  ret i32 undef
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %nww = alloca i32, align 4
  %list = alloca %struct.struct_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nww) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list) #7
  %call = call i32 @gitter(i32 poison, ptr noundef nonnull @pos, ptr noundef nonnull %list, ptr noundef nonnull %nww, ptr noundef nonnull @limit, float noundef 1.000000e+00)
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 4}
!6 = !{!"", !7, i64 0, !7, i64 4}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"", !7, i64 0}
