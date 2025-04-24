; 122120271910209517507999121173237326013
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/122120271910209517507999121173237326013.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/122120271910209517507999121173237326013.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"This won't be compiled.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1
@str.2 = private unnamed_addr constant [24 x i8] c"This won't be compiled.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i48 17180065792, 17180131328) i48 @g() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %conv2.mask = shl i32 %call1, 8
  %0 = and i32 %conv2.mask, 65280
  %conv.mask = and i32 %call, 255
  %retval.sroa.2.0.insert.insert4 = or disjoint i32 %0, %conv.mask
  %retval.sroa.2.0.insert.insert = zext nneg i32 %retval.sroa.2.0.insert.insert4 to i48
  %retval.sroa.0.0.insert.insert = or disjoint i48 %retval.sroa.2.0.insert.insert, 17180065792
  ret i48 %retval.sroa.0.0.insert.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i48 17180065792, 17180131328) i48 @f() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %conv2.mask.i = shl i32 %call1.i, 8
  %0 = and i32 %conv2.mask.i, 65280
  %conv.mask.i = and i32 %call.i, 255
  %retval.sroa.2.0.insert.insert4.i = or disjoint i32 %0, %conv.mask.i
  %retval.sroa.2.0.insert.insert.i = zext nneg i32 %retval.sroa.2.0.insert.insert4.i to i48
  %retval.sroa.0.0.insert.insert.i = or disjoint i48 %retval.sroa.2.0.insert.insert.i, 17180065792
  ret i48 %retval.sroa.0.0.insert.insert.i
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = and i32 %call.i.i, 255
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %puts27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  %call1.i.i21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %1 = and i32 %call1.i.i21, 255
  %cmp5.not = icmp eq i32 %1, 2
  br i1 %cmp5.not, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i48 @f()
  %call14 = tail call i48 @f()
  tail call void @exit(i32 noundef 0) #6
  unreachable

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @abort() #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
