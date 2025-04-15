; 190383760344181567566027682799399630232
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190383760344181567566027682799399630232.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190383760344181567566027682799399630232.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"I exist!\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f(i32 %n, i16 %x.coerce, i16 %y.coerce, i16 %z.coerce, i64 noundef %l) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.not = icmp eq i32 %call, 10
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %x.sroa.1.0.extract.shift.mask = and i16 %x.coerce, -256
  %cmp1.not = icmp eq i16 %x.sroa.1.0.extract.shift.mask, 5120
  br i1 %cmp1.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #5
  unreachable

if.end4:                                          ; preds = %if.end
  %0 = and i16 %y.coerce, 255
  %cmp6.not = icmp eq i16 %0, 11
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  tail call void @abort() #5
  unreachable

if.end9:                                          ; preds = %if.end4
  %y.sroa.2.0.extract.shift.mask = and i16 %y.coerce, -256
  %cmp12.not = icmp eq i16 %y.sroa.2.0.extract.shift.mask, 5376
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end9
  tail call void @abort() #5
  unreachable

if.end15:                                         ; preds = %if.end9
  %1 = and i16 %z.coerce, 255
  %cmp18.not = icmp eq i16 %1, 12
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end15
  tail call void @abort() #5
  unreachable

if.end21:                                         ; preds = %if.end15
  %z.sroa.2.0.extract.shift.mask = and i16 %z.coerce, -256
  %cmp24.not = icmp eq i16 %z.sroa.2.0.extract.shift.mask, 5632
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end21
  tail call void @abort() #5
  unreachable

if.end27:                                         ; preds = %if.end21
  %cmp28.not = icmp eq i64 %l, 123
  br i1 %cmp28.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  tail call void @abort() #5
  unreachable

if.end31:                                         ; preds = %if.end27
  ret i32 undef
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call = tail call i32 @f(i32 poison, i16 5130, i16 5387, i16 5644, i64 noundef 123)
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
