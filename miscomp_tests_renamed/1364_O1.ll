; 124445071618788118933376455626047824760
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/124445071618788118933376455626047824760.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/124445071618788118933376455626047824760.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local local_unnamed_addr global i8 0, align 1
@a = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @func4() #4
  store i8 4, ptr @c, align 1, !tbaa !5
  %0 = load i32, ptr @a, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %0, 0
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, ptr @f, align 4, !tbaa !8
  %1 = load i32, ptr @d, align 4, !tbaa !8
  %xor = xor i32 %1, %conv3
  store i32 %xor, ptr @d, align 4, !tbaa !8
  %tobool.not = icmp eq i32 %1, %conv3
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %not = xor i32 %xor, -1
  store i32 %not, ptr @b, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq i32 %xor, -1
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @exit(i32 noundef 0) #5
  unreachable

if.end6:                                          ; preds = %if.end
  tail call void @abort() #5
  unreachable
}

declare i32 @func4(...) local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
