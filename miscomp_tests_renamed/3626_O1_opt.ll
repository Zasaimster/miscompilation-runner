; 158000770482723690629356411190755618102
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/158000770482723690629356411190755618102_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/158000770482723690629356411190755618102.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@factab = dso_local local_unnamed_addr global [10 x i64] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @gcd_ll(i64 noundef %x, i64 noundef %y) local_unnamed_addr #0 {
entry:
  %rem6 = urem i64 %x, %y
  %cmp7 = icmp eq i64 %rem6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %if.end, %entry
  %y.addr.0.lcssa = phi i64 [ %y, %entry ], [ %rem1, %if.end ]
  ret i64 %y.addr.0.lcssa

if.end:                                           ; preds = %if.end, %entry
  %rem9 = phi i64 [ %rem, %if.end ], [ %rem6, %entry ]
  %y.addr.08 = phi i64 [ %rem1, %if.end ], [ %y, %entry ]
  %rem1 = urem i64 %y.addr.08, %rem9
  %rem = urem i64 %rem9, %rem1
  %cmp = icmp eq i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.end, !llvm.loop !5
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @powmod_ll(i64 noundef %b, i32 noundef %e, i64 noundef %m) local_unnamed_addr #0 {
entry:
  switch i32 %e, label %for.body4.preheader [
    i32 0, label %cleanup
    i32 1, label %cleanup.fold.split
  ]

for.body4.preheader:                              ; preds = %entry
  %0 = lshr i32 %e, 1
  %1 = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %0, i1 false)
  %2 = sub nuw nsw i32 32, %1
  br label %for.body4

for.body4:                                        ; preds = %for.inc9, %for.body4.preheader
  %i.129.in = phi i32 [ %i.129, %for.inc9 ], [ %2, %for.body4.preheader ]
  %pow.028 = phi i64 [ %pow.1, %for.inc9 ], [ %b, %for.body4.preheader ]
  %i.129 = add nsw i32 %i.129.in, -1
  %mul = mul i64 %pow.028, %pow.028
  %rem = urem i64 %mul, %m
  %shl = shl nuw i32 1, %i.129
  %and = and i32 %shl, %e
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc9, label %if.then5

if.then5:                                         ; preds = %for.body4
  %mul6 = mul i64 %rem, %b
  %rem7 = urem i64 %mul6, %m
  br label %for.inc9

for.inc9:                                         ; preds = %if.then5, %for.body4
  %pow.1 = phi i64 [ %rem7, %if.then5 ], [ %rem, %for.body4 ]
  %cmp3 = icmp sgt i32 %i.129.in, 1
  br i1 %cmp3, label %for.body4, label %cleanup, !llvm.loop !7

cleanup.fold.split:                               ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %for.inc9, %entry
  %retval.0 = phi i64 [ 1, %entry ], [ %b, %cleanup.fold.split ], [ %pow.1, %for.inc9 ]
  ret i64 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @facts(i64 noundef %t, i32 noundef %a_int, i32 noundef %x0, i32 noundef %p) local_unnamed_addr #1 {
entry:
  %conv = sext i32 %a_int to i64
  %conv1 = sext i32 %x0 to i64
  %cmp.i = icmp eq i32 %p, 0
  %0 = lshr i32 %p, 1
  %1 = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %0, i1 false)
  %2 = sub nuw nsw i32 32, %1
  %3 = lshr i32 %p, 1
  %4 = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %3, i1 false)
  %5 = sub nuw nsw i32 32, %4
  %6 = lshr i32 %p, 1
  %7 = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %6, i1 false)
  %8 = sub nuw nsw i32 32, %7
  %switch = icmp ult i32 %p, 2
  %switch114 = icmp ult i32 %p, 2
  %switch115 = icmp ult i32 %p, 2
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %jj.0109 = phi i32 [ 0, %entry ], [ %jj.1, %for.inc ]
  %j.0108 = phi i32 [ 1, %entry ], [ %j.1, %for.inc ]
  %t.addr.0107 = phi i64 [ %t, %entry ], [ %t.addr.1, %for.inc ]
  %i.0106 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %xp.0105 = phi ptr [ @factab, %entry ], [ %xp.1, %for.inc ]
  %q.0104 = phi i64 [ 1, %entry ], [ %rem, %for.inc ]
  %y.0103 = phi i64 [ %conv1, %entry ], [ %add7, %for.inc ]
  %x.0102 = phi i64 [ %conv1, %entry ], [ %add, %for.inc ]
  %.mux = select i1 %cmp.i, i64 1, i64 %x.0102
  br i1 %switch, label %powmod_ll.exit, label %for.body4.i

for.body4.i:                                      ; preds = %for.inc9.i, %for.body
  %i.129.in.i = phi i32 [ %i.129.i, %for.inc9.i ], [ %2, %for.body ]
  %pow.028.i = phi i64 [ %pow.1.i, %for.inc9.i ], [ %x.0102, %for.body ]
  %i.129.i = add nsw i32 %i.129.in.i, -1
  %mul.i = mul i64 %pow.028.i, %pow.028.i
  %rem.i = urem i64 %mul.i, %t.addr.0107
  %shl.i = shl nuw i32 1, %i.129.i
  %and.i = and i32 %shl.i, %p
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc9.i, label %if.then5.i

if.then5.i:                                       ; preds = %for.body4.i
  %mul6.i = mul i64 %rem.i, %x.0102
  %rem7.i = urem i64 %mul6.i, %t.addr.0107
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %if.then5.i, %for.body4.i
  %pow.1.i = phi i64 [ %rem7.i, %if.then5.i ], [ %rem.i, %for.body4.i ]
  %cmp3.i = icmp sgt i32 %i.129.in.i, 1
  br i1 %cmp3.i, label %for.body4.i, label %powmod_ll.exit, !llvm.loop !7

powmod_ll.exit:                                   ; preds = %for.inc9.i, %for.body
  %retval.0.i = phi i64 [ %.mux, %for.body ], [ %pow.1.i, %for.inc9.i ]
  %add = add i64 %retval.0.i, %conv
  %.mux111 = select i1 %cmp.i, i64 1, i64 %y.0103
  br i1 %switch114, label %powmod_ll.exit79, label %for.body4.i63

for.body4.i63:                                    ; preds = %for.inc9.i75, %powmod_ll.exit
  %i.129.in.i64 = phi i32 [ %i.129.i66, %for.inc9.i75 ], [ %5, %powmod_ll.exit ]
  %pow.028.i65 = phi i64 [ %pow.1.i76, %for.inc9.i75 ], [ %y.0103, %powmod_ll.exit ]
  %i.129.i66 = add nsw i32 %i.129.in.i64, -1
  %mul.i67 = mul i64 %pow.028.i65, %pow.028.i65
  %rem.i68 = urem i64 %mul.i67, %t.addr.0107
  %shl.i69 = shl nuw i32 1, %i.129.i66
  %and.i70 = and i32 %shl.i69, %p
  %tobool.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %tobool.not.i71, label %for.inc9.i75, label %if.then5.i72

if.then5.i72:                                     ; preds = %for.body4.i63
  %mul6.i73 = mul i64 %rem.i68, %y.0103
  %rem7.i74 = urem i64 %mul6.i73, %t.addr.0107
  br label %for.inc9.i75

for.inc9.i75:                                     ; preds = %if.then5.i72, %for.body4.i63
  %pow.1.i76 = phi i64 [ %rem7.i74, %if.then5.i72 ], [ %rem.i68, %for.body4.i63 ]
  %cmp3.i77 = icmp sgt i32 %i.129.in.i64, 1
  br i1 %cmp3.i77, label %for.body4.i63, label %powmod_ll.exit79, !llvm.loop !7

powmod_ll.exit79:                                 ; preds = %for.inc9.i75, %powmod_ll.exit
  %retval.0.i78 = phi i64 [ %.mux111, %powmod_ll.exit ], [ %pow.1.i76, %for.inc9.i75 ]
  %add5 = add i64 %retval.0.i78, %conv
  %.mux113 = select i1 %cmp.i, i64 1, i64 %add5
  br i1 %switch115, label %powmod_ll.exit99, label %for.body4.i83

for.body4.i83:                                    ; preds = %for.inc9.i95, %powmod_ll.exit79
  %i.129.in.i84 = phi i32 [ %i.129.i86, %for.inc9.i95 ], [ %8, %powmod_ll.exit79 ]
  %pow.028.i85 = phi i64 [ %pow.1.i96, %for.inc9.i95 ], [ %add5, %powmod_ll.exit79 ]
  %i.129.i86 = add nsw i32 %i.129.in.i84, -1
  %mul.i87 = mul i64 %pow.028.i85, %pow.028.i85
  %rem.i88 = urem i64 %mul.i87, %t.addr.0107
  %shl.i89 = shl nuw i32 1, %i.129.i86
  %and.i90 = and i32 %shl.i89, %p
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %for.inc9.i95, label %if.then5.i92

if.then5.i92:                                     ; preds = %for.body4.i83
  %mul6.i93 = mul i64 %rem.i88, %add5
  %rem7.i94 = urem i64 %mul6.i93, %t.addr.0107
  br label %for.inc9.i95

for.inc9.i95:                                     ; preds = %if.then5.i92, %for.body4.i83
  %pow.1.i96 = phi i64 [ %rem7.i94, %if.then5.i92 ], [ %rem.i88, %for.body4.i83 ]
  %cmp3.i97 = icmp sgt i32 %i.129.in.i84, 1
  br i1 %cmp3.i97, label %for.body4.i83, label %powmod_ll.exit99, !llvm.loop !7

powmod_ll.exit99:                                 ; preds = %for.inc9.i95, %powmod_ll.exit79
  %retval.0.i98 = phi i64 [ %.mux113, %powmod_ll.exit79 ], [ %pow.1.i96, %for.inc9.i95 ]
  %add7 = add i64 %retval.0.i98, %conv
  %cmp8 = icmp ugt i64 %add, %add7
  %sub = sub i64 %retval.0.i, %retval.0.i98
  %sub10 = sub i64 %retval.0.i98, %retval.0.i
  %tmp.0 = select i1 %cmp8, i64 %sub, i64 %sub10
  %mul = mul i64 %tmp.0, %q.0104
  %rem = urem i64 %mul, %t.addr.0107
  %cmp11 = icmp eq i32 %i.0106, %j.0108
  br i1 %cmp11, label %if.then13, label %for.inc

if.then13:                                        ; preds = %powmod_ll.exit99
  %add14 = add nsw i32 %jj.0109, 1
  %add15 = add nsw i32 %add14, %j.0108
  %cmp7.i = icmp eq i64 %rem, 0
  br i1 %cmp7.i, label %gcd_ll.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.i, %if.then13
  %rem9.i = phi i64 [ %rem.i100, %if.end.i ], [ %rem, %if.then13 ]
  %y.addr.08.i = phi i64 [ %rem1.i, %if.end.i ], [ %t.addr.0107, %if.then13 ]
  %rem1.i = urem i64 %y.addr.08.i, %rem9.i
  %rem.i100 = urem i64 %rem9.i, %rem1.i
  %cmp.i101 = icmp eq i64 %rem.i100, 0
  br i1 %cmp.i101, label %gcd_ll.exit, label %if.end.i, !llvm.loop !5

gcd_ll.exit:                                      ; preds = %if.end.i, %if.then13
  %y.addr.0.lcssa.i = phi i64 [ %t.addr.0107, %if.then13 ], [ %rem1.i, %if.end.i ]
  %cmp17.not = icmp eq i64 %y.addr.0.lcssa.i, 1
  br i1 %cmp17.not, label %for.inc, label %if.then19

if.then19:                                        ; preds = %gcd_ll.exit
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %xp.0105, i64 8
  store i64 %y.addr.0.lcssa.i, ptr %xp.0105, align 8, !tbaa !9
  %div = udiv i64 %t.addr.0107, %y.addr.0.lcssa.i
  %cmp20 = icmp eq i64 %div, 1
  br i1 %cmp20, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then19, %gcd_ll.exit, %powmod_ll.exit99
  %xp.1 = phi ptr [ %incdec.ptr, %if.then19 ], [ %xp.0105, %gcd_ll.exit ], [ %xp.0105, %powmod_ll.exit99 ]
  %t.addr.1 = phi i64 [ %div, %if.then19 ], [ %t.addr.0107, %gcd_ll.exit ], [ %t.addr.0107, %powmod_ll.exit99 ]
  %j.1 = phi i32 [ %add15, %if.then19 ], [ %add15, %gcd_ll.exit ], [ %j.0108, %powmod_ll.exit99 ]
  %jj.1 = phi i32 [ %add14, %if.then19 ], [ %add14, %gcd_ll.exit ], [ %jj.0109, %powmod_ll.exit99 ]
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !13

cleanup:                                          ; preds = %for.inc, %if.then19
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  tail call void @facts(i64 noundef 134217727, i32 noundef -1, i32 noundef 3, i32 noundef 27)
  %0 = load i64, ptr @factab, align 16, !tbaa !9
  %cmp = icmp ne i64 %0, 7
  %1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @factab, i64 8), align 8
  %cmp1 = icmp ne i64 %1, 73
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @factab, i64 16), align 16
  %cmp3 = icmp ne i64 %2, 262657
  %or.cond4 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8, !6}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !8, !6}
