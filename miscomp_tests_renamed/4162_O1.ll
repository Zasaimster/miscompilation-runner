; 172794259258089349540948766225681195952
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/172794259258089349540948766225681195952.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/172794259258089349540948766225681195952.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i24 %x.coerce, i24 %y.coerce, i24 %z.coerce, i64 noundef %l) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i32, ...) @calculateSquare(i32 noundef 4) #5
  %cmp.not = icmp eq i32 %call, 10
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %0 = and i24 %x.coerce, 65280
  %cmp1.not = icmp eq i24 %0, 5120
  br i1 %cmp1.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #6
  unreachable

if.end4:                                          ; preds = %if.end
  %x.sroa.2.0.extract.shift.mask = and i24 %x.coerce, -65536
  %cmp6.not = icmp eq i24 %x.sroa.2.0.extract.shift.mask, 1966080
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  tail call void @abort() #6
  unreachable

if.end9:                                          ; preds = %if.end4
  %1 = and i24 %y.coerce, 255
  %cmp11.not = icmp eq i24 %1, 11
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  tail call void @abort() #6
  unreachable

if.end14:                                         ; preds = %if.end9
  %2 = and i24 %y.coerce, 65280
  %cmp17.not = icmp eq i24 %2, 5376
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end14
  tail call void @abort() #6
  unreachable

if.end20:                                         ; preds = %if.end14
  %y.sroa.3.0.extract.shift.mask = and i24 %y.coerce, -65536
  %cmp23.not = icmp eq i24 %y.sroa.3.0.extract.shift.mask, 2031616
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end20
  tail call void @abort() #6
  unreachable

if.end26:                                         ; preds = %if.end20
  %3 = and i24 %z.coerce, 255
  %cmp29.not = icmp eq i24 %3, 12
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end26
  tail call void @abort() #6
  unreachable

if.end32:                                         ; preds = %if.end26
  %4 = and i24 %z.coerce, 65280
  %cmp35.not = icmp eq i24 %4, 5632
  br i1 %cmp35.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end32
  tail call void @abort() #6
  unreachable

if.end38:                                         ; preds = %if.end32
  %z.sroa.3.0.extract.shift.mask = and i24 %z.coerce, -65536
  %cmp41.not = icmp eq i24 %z.sroa.3.0.extract.shift.mask, 2097152
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end38
  tail call void @abort() #6
  unreachable

if.end44:                                         ; preds = %if.end38
  %cmp45.not = icmp eq i64 %l, 123
  br i1 %cmp45.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end44
  tail call void @abort() #6
  unreachable

if.end48:                                         ; preds = %if.end44
  ret i32 undef
}

declare i32 @calculateSquare(...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call.i = tail call i32 (i32, ...) @calculateSquare(i32 noundef 4) #5
  %cmp.not.i = icmp eq i32 %call.i, 10
  br i1 %cmp.not.i, label %f.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #6
  unreachable

f.exit:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
