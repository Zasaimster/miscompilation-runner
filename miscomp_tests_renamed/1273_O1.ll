; 122813468424291622203408760442705209117
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/122813468424291622203408760442705209117.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/122813468424291622203408760442705209117.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scf10 = type { { double, double }, { double, double } }

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@g1s = dso_local local_unnamed_addr global %struct.Scf10 zeroinitializer, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @check(ptr noundef readnone byval(%struct.Scf10) align 8 captures(none) %x, double noundef %y.coerce0, double noundef %y.coerce1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sitofp i32 %call to double
  %cmp.r = fcmp une double %y.coerce0, %conv
  %cmp.i = fcmp une double %y.coerce1, 0.000000e+00
  %or.ri = or i1 %cmp.i, %cmp.r
  br i1 %or.ri, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init(ptr noundef writeonly captures(none) initializes((0, 16)) %p, double noundef %y.coerce0, double noundef %y.coerce1) local_unnamed_addr #3 {
entry:
  %a.imagp = getelementptr inbounds nuw i8, ptr %p, i64 8
  store double %y.coerce0, ptr %p, align 8
  store double %y.coerce1, ptr %a.imagp, align 8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store double 1.000000e+00, ptr @g1s, align 8
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @g1s, i64 8), align 8
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.r.i.not = icmp eq i32 %call.i, 1
  br i1 %cmp.r.i.not, label %check.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #4
  unreachable

check.exit:                                       ; preds = %entry
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
