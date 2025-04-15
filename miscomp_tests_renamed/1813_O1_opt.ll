; 105895132073917518089302822005119786918
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/105895132073917518089302822005119786918_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/105895132073917518089302822005119786918.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@factab = dso_local local_unnamed_addr global [10 x i64] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @unusedFunction() local_unnamed_addr #0 {
entry:
  ret i32 42
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @powmod_ll(i64 noundef %b, i32 noundef %e, i64 noundef %m) local_unnamed_addr #1 {
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
  br i1 %cmp3, label %for.body4, label %cleanup, !llvm.loop !5

cleanup.fold.split:                               ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %for.inc9, %entry
  %retval.0 = phi i64 [ 1, %entry ], [ %b, %cleanup.fold.split ], [ %pow.1, %for.inc9 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local void @facts(i64 noundef %t, i32 noundef %a_int, i32 noundef %x0, i32 noundef %p) local_unnamed_addr #2 {
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
  %switch113 = icmp ult i32 %p, 2
  %switch114 = icmp ult i32 %p, 2
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %jj.0108 = phi i32 [ 0, %entry ], [ %jj.1, %for.inc ]
  %j.0107 = phi i32 [ 1, %entry ], [ %j.1, %for.inc ]
  %t.addr.0106 = phi i64 [ %t, %entry ], [ %t.addr.1, %for.inc ]
  %i.0105 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %xp.0104 = phi ptr [ @factab, %entry ], [ %xp.1, %for.inc ]
  %q.0103 = phi i64 [ 1, %entry ], [ %rem, %for.inc ]
  %y.0102 = phi i64 [ %conv1, %entry ], [ %add7, %for.inc ]
  %x.0101 = phi i64 [ %conv1, %entry ], [ %add, %for.inc ]
  %.mux = select i1 %cmp.i, i64 1, i64 %x.0101
  br i1 %switch, label %powmod_ll.exit, label %for.body4.i

for.body4.i:                                      ; preds = %for.inc9.i, %for.body
  %i.129.in.i = phi i32 [ %i.129.i, %for.inc9.i ], [ %2, %for.body ]
  %pow.028.i = phi i64 [ %pow.1.i, %for.inc9.i ], [ %x.0101, %for.body ]
  %i.129.i = add nsw i32 %i.129.in.i, -1
  %mul.i = mul i64 %pow.028.i, %pow.028.i
  %rem.i = urem i64 %mul.i, %t.addr.0106
  %shl.i = shl nuw i32 1, %i.129.i
  %and.i = and i32 %shl.i, %p
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc9.i, label %if.then5.i

if.then5.i:                                       ; preds = %for.body4.i
  %mul6.i = mul i64 %rem.i, %x.0101
  %rem7.i = urem i64 %mul6.i, %t.addr.0106
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %if.then5.i, %for.body4.i
  %pow.1.i = phi i64 [ %rem7.i, %if.then5.i ], [ %rem.i, %for.body4.i ]
  %cmp3.i = icmp sgt i32 %i.129.in.i, 1
  br i1 %cmp3.i, label %for.body4.i, label %powmod_ll.exit, !llvm.loop !5

powmod_ll.exit:                                   ; preds = %for.inc9.i, %for.body
  %retval.0.i = phi i64 [ %.mux, %for.body ], [ %pow.1.i, %for.inc9.i ]
  %add = add i64 %retval.0.i, %conv
  %.mux110 = select i1 %cmp.i, i64 1, i64 %y.0102
  br i1 %switch113, label %powmod_ll.exit80, label %for.body4.i64

for.body4.i64:                                    ; preds = %for.inc9.i76, %powmod_ll.exit
  %i.129.in.i65 = phi i32 [ %i.129.i67, %for.inc9.i76 ], [ %5, %powmod_ll.exit ]
  %pow.028.i66 = phi i64 [ %pow.1.i77, %for.inc9.i76 ], [ %y.0102, %powmod_ll.exit ]
  %i.129.i67 = add nsw i32 %i.129.in.i65, -1
  %mul.i68 = mul i64 %pow.028.i66, %pow.028.i66
  %rem.i69 = urem i64 %mul.i68, %t.addr.0106
  %shl.i70 = shl nuw i32 1, %i.129.i67
  %and.i71 = and i32 %shl.i70, %p
  %tobool.not.i72 = icmp eq i32 %and.i71, 0
  br i1 %tobool.not.i72, label %for.inc9.i76, label %if.then5.i73

if.then5.i73:                                     ; preds = %for.body4.i64
  %mul6.i74 = mul i64 %rem.i69, %y.0102
  %rem7.i75 = urem i64 %mul6.i74, %t.addr.0106
  br label %for.inc9.i76

for.inc9.i76:                                     ; preds = %if.then5.i73, %for.body4.i64
  %pow.1.i77 = phi i64 [ %rem7.i75, %if.then5.i73 ], [ %rem.i69, %for.body4.i64 ]
  %cmp3.i78 = icmp sgt i32 %i.129.in.i65, 1
  br i1 %cmp3.i78, label %for.body4.i64, label %powmod_ll.exit80, !llvm.loop !5

powmod_ll.exit80:                                 ; preds = %for.inc9.i76, %powmod_ll.exit
  %retval.0.i79 = phi i64 [ %.mux110, %powmod_ll.exit ], [ %pow.1.i77, %for.inc9.i76 ]
  %add5 = add i64 %retval.0.i79, %conv
  %.mux112 = select i1 %cmp.i, i64 1, i64 %add5
  br i1 %switch114, label %powmod_ll.exit100, label %for.body4.i84

for.body4.i84:                                    ; preds = %for.inc9.i96, %powmod_ll.exit80
  %i.129.in.i85 = phi i32 [ %i.129.i87, %for.inc9.i96 ], [ %8, %powmod_ll.exit80 ]
  %pow.028.i86 = phi i64 [ %pow.1.i97, %for.inc9.i96 ], [ %add5, %powmod_ll.exit80 ]
  %i.129.i87 = add nsw i32 %i.129.in.i85, -1
  %mul.i88 = mul i64 %pow.028.i86, %pow.028.i86
  %rem.i89 = urem i64 %mul.i88, %t.addr.0106
  %shl.i90 = shl nuw i32 1, %i.129.i87
  %and.i91 = and i32 %shl.i90, %p
  %tobool.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool.not.i92, label %for.inc9.i96, label %if.then5.i93

if.then5.i93:                                     ; preds = %for.body4.i84
  %mul6.i94 = mul i64 %rem.i89, %add5
  %rem7.i95 = urem i64 %mul6.i94, %t.addr.0106
  br label %for.inc9.i96

for.inc9.i96:                                     ; preds = %if.then5.i93, %for.body4.i84
  %pow.1.i97 = phi i64 [ %rem7.i95, %if.then5.i93 ], [ %rem.i89, %for.body4.i84 ]
  %cmp3.i98 = icmp sgt i32 %i.129.in.i85, 1
  br i1 %cmp3.i98, label %for.body4.i84, label %powmod_ll.exit100, !llvm.loop !5

powmod_ll.exit100:                                ; preds = %for.inc9.i96, %powmod_ll.exit80
  %retval.0.i99 = phi i64 [ %.mux112, %powmod_ll.exit80 ], [ %pow.1.i97, %for.inc9.i96 ]
  %add7 = add i64 %retval.0.i99, %conv
  %cmp8 = icmp ugt i64 %add, %add7
  %sub = sub i64 %retval.0.i, %retval.0.i99
  %sub10 = sub i64 %retval.0.i99, %retval.0.i
  %tmp.0 = select i1 %cmp8, i64 %sub, i64 %sub10
  %mul = mul i64 %tmp.0, %q.0103
  %rem = urem i64 %mul, %t.addr.0106
  %cmp11 = icmp eq i32 %i.0105, %j.0107
  br i1 %cmp11, label %if.then13, label %for.inc

if.then13:                                        ; preds = %powmod_ll.exit100
  %add14 = add nsw i32 %jj.0108, 1
  %add15 = add nsw i32 %add14, %j.0107
  %call16 = tail call i32 (i64, i64, ...) @gcd_ll(i64 noundef %rem, i64 noundef %t.addr.0106) #8
  %cmp18.not = icmp eq i32 %call16, 1
  br i1 %cmp18.not, label %for.inc, label %if.then20

if.then20:                                        ; preds = %if.then13
  %conv17 = sext i32 %call16 to i64
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %xp.0104, i64 8
  store i64 %conv17, ptr %xp.0104, align 8, !tbaa !8
  %div = udiv i64 %t.addr.0106, %conv17
  %cmp21 = icmp eq i64 %div, 1
  br i1 %cmp21, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.then20, %if.then13, %powmod_ll.exit100
  %xp.1 = phi ptr [ %incdec.ptr, %if.then20 ], [ %xp.0104, %if.then13 ], [ %xp.0104, %powmod_ll.exit100 ]
  %t.addr.1 = phi i64 [ %div, %if.then20 ], [ %t.addr.0106, %if.then13 ], [ %t.addr.0106, %powmod_ll.exit100 ]
  %j.1 = phi i32 [ %add15, %if.then20 ], [ %add15, %if.then13 ], [ %j.0107, %powmod_ll.exit100 ]
  %jj.1 = phi i32 [ %add14, %if.then20 ], [ %add14, %if.then13 ], [ %jj.0108, %powmod_ll.exit100 ]
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !12

cleanup:                                          ; preds = %for.inc, %if.then20
  ret void
}

declare i32 @gcd_ll(...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  tail call void @facts(i64 noundef 134217727, i32 noundef -1, i32 noundef 3, i32 noundef 27)
  %0 = load i64, ptr @factab, align 16, !tbaa !8
  %cmp = icmp ne i64 %0, 7
  %1 = load i64, ptr getelementptr inbounds nuw (i8, ptr @factab, i64 8), align 8
  %cmp1 = icmp ne i64 %1, 73
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @factab, i64 16), align 16
  %cmp3 = icmp ne i64 %2, 262657
  %or.cond4 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #9
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #9
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
