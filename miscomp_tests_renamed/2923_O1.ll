; 151332364468272510969230898893528458897
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/151332364468272510969230898893528458897.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/151332364468272510969230898893528458897.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"This will always print the same value: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo2(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 %x.coerce0, i32 %x.coerce1)
  %or.cond = icmp ne i64 %y.coerce0, 30064771078
  %cmp4 = icmp ne i32 %y.coerce1, 8
  %or.cond5 = select i1 %or.cond, i1 true, i1 %cmp4
  br i1 %or.cond5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo3(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1, i64 %z.coerce0, i32 %z.coerce1) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 %x.coerce0, i32 %x.coerce1)
  %or.cond.i = icmp ne i64 %y.coerce0, 30064771078
  %cmp4.i = icmp ne i32 %y.coerce1, 8
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %cmp4.i
  br i1 %or.cond5.i, label %if.then.i, label %foo2.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #3
  unreachable

foo2.exit:                                        ; preds = %entry
  %or.cond = icmp ne i64 %z.coerce0, 42949672969
  %cmp5 = icmp ne i32 %z.coerce1, 11
  %or.cond6 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond6, label %if.then, label %if.end

if.then:                                          ; preds = %foo2.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %foo2.exit
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @bar2(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 %y.coerce0, i32 %y.coerce1)
  %or.cond.i = icmp ne i64 %x.coerce0, 30064771078
  %cmp4.i = icmp ne i32 %x.coerce1, 8
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %cmp4.i
  br i1 %or.cond5.i, label %if.then.i, label %foo2.exit

if.then.i:                                        ; preds = %entry
  tail call void @abort() #3
  unreachable

foo2.exit:                                        ; preds = %entry
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @bar3(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1, i64 %z.coerce0, i32 %z.coerce1) local_unnamed_addr #0 {
entry:
  %call.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 %y.coerce0, i32 %y.coerce1)
  %or.cond.i.i = icmp ne i64 %x.coerce0, 30064771078
  %cmp4.i.i = icmp ne i32 %x.coerce1, 8
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp4.i.i
  br i1 %or.cond5.i.i, label %if.then.i.i, label %foo2.exit.i

if.then.i.i:                                      ; preds = %entry
  tail call void @abort() #3
  unreachable

foo2.exit.i:                                      ; preds = %entry
  %or.cond.i = icmp ne i64 %z.coerce0, 42949672969
  %cmp5.i = icmp ne i32 %z.coerce1, 11
  %or.cond6.i = select i1 %or.cond.i, i1 true, i1 %cmp5.i
  br i1 %or.cond6.i, label %if.then.i, label %foo3.exit

if.then.i:                                        ; preds = %foo2.exit.i
  tail call void @abort() #3
  unreachable

foo3.exit:                                        ; preds = %foo2.exit.i
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @baz3(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1, i64 %z.coerce0, i32 %z.coerce1) local_unnamed_addr #0 {
entry:
  %call.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 %y.coerce0, i32 %y.coerce1)
  %or.cond.i.i = icmp ne i64 %z.coerce0, 30064771078
  %cmp4.i.i = icmp ne i32 %z.coerce1, 8
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp4.i.i
  br i1 %or.cond5.i.i, label %if.then.i.i, label %foo2.exit.i

if.then.i.i:                                      ; preds = %entry
  tail call void @abort() #3
  unreachable

foo2.exit.i:                                      ; preds = %entry
  %or.cond.i = icmp ne i64 %x.coerce0, 42949672969
  %cmp5.i = icmp ne i32 %x.coerce1, 11
  %or.cond6.i = select i1 %or.cond.i, i1 true, i1 %cmp5.i
  br i1 %or.cond6.i, label %if.then.i, label %foo3.exit

if.then.i:                                        ; preds = %foo2.exit.i
  tail call void @abort() #3
  unreachable

foo3.exit:                                        ; preds = %foo2.exit.i
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 17179869187, i32 5)
  %call.i.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 17179869187, i32 5)
  %call.i.i.i13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 17179869187, i32 5)
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
