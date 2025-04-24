; 119195344050167185138129447152012959097
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119195344050167185138129447152012959097.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119195344050167185138129447152012959097.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@switch.table.foo = private unnamed_addr constant [8 x i32] [i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 30, 32) i32 @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %switch.tableidx = add i32 %x, -4
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i32], ptr @switch.table.foo, i64 0, i64 %1
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 31, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = icmp samesign ult i32 %i.040, 12
  %switch.cast = trunc i32 %i.040 to i12
  %switch.downshift = lshr i12 -1456, %switch.cast
  %switch.masked = trunc i12 %switch.downshift to i1
  %cmp12.not = select i1 %0, i1 %switch.masked, i1 false
  switch i32 %i.040, label %if.else21 [
    i32 4, label %if.then
    i32 6, label %if.then5
    i32 9, label %if.then11
  ]

if.then:                                          ; preds = %for.body
  br i1 %cmp12.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @abort() #3
  unreachable

if.then5:                                         ; preds = %for.body
  br i1 %cmp12.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %if.then5
  tail call void @abort() #3
  unreachable

if.then11:                                        ; preds = %for.body
  br i1 %cmp12.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %if.then11
  tail call void @abort() #3
  unreachable

if.else21:                                        ; preds = %for.body
  %switch.cast41 = trunc i32 %i.040 to i12
  %switch.downshift43 = lshr i12 1455, %switch.cast41
  %switch.masked44 = trunc i12 %switch.downshift43 to i1
  %not. = xor i1 %0, true
  %cmp22.not = select i1 %not., i1 true, i1 %switch.masked44
  br i1 %cmp22.not, label %for.inc, label %if.then23

if.then23:                                        ; preds = %if.else21
  tail call void @abort() #3
  unreachable

for.inc:                                          ; preds = %if.then, %if.then11, %if.else21, %if.then5
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !5

for.end:                                          ; preds = %for.inc
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
