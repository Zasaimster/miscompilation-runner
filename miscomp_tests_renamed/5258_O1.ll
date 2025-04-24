; 192925982167369839971738667729655201403
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192925982167369839971738667729655201403.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192925982167369839971738667729655201403.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local void @func_44(i32 noundef %p_45) local_unnamed_addr #0 {
entry:
  %mul = mul i32 %p_45, -9
  %call = tail call fastcc i32 @mod_rhs()
  %rem = urem i32 %mul, %call
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(none) uwtable
define internal fastcc range(i32 -9, 2) i32 @mod_rhs() unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @mod_rhs()
  %cmp = icmp eq i32 %call, 0
  %. = select i1 %cmp, i32 1, i32 -9
  ret i32 %.
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call fastcc i32 @mod_rhs()
  %rem.i = urem i32 -18, %call.i
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %func_44.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #3
  unreachable

func_44.exit:                                     ; preds = %entry
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
