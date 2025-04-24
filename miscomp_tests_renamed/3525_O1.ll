; 161495036390582876270415500900800228049
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/161495036390582876270415500900800228049.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/161495036390582876270415500900800228049.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [6 x i8] c"boom!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @f1(i32 noundef %argc) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @func2() #6
  %cmp4 = icmp eq i32 %argc, 0
  br i1 %cmp4, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end3, %entry
  ret void

if.end3:                                          ; preds = %entry, %if.end3
  %argc.addr.05 = phi i32 [ %dec, %if.end3 ], [ %argc, %entry ]
  %dec = add nsw i32 %argc.addr.05, -1
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then2, label %if.end3
}

declare i32 @func2(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @f2() local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @f3() local_unnamed_addr #4 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 11)
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 12)
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0)
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @func2() #6
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end3.i, %entry
  %argc.addr.05.i = phi i32 [ %dec.i, %if.end3.i ], [ 2, %entry ]
  %dec.i = add nsw i32 %argc.addr.05.i, -1
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %f1.exit, label %if.end3.i

f1.exit:                                          ; preds = %if.end3.i
  %call.i1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 11)
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 12)
  %call2.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0)
  %call3.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
