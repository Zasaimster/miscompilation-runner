; 109340667266715592350519170918378910569
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/109340667266715592350519170918378910569.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/109340667266715592350519170918378910569.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"This branch is executed.\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @dd(i32 noundef %x, i32 noundef %d) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div = sdiv i32 %call, %d
  ret i32 %div
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  br label %for.body

for.cond:                                         ; preds = %if.end31
  %inc = add nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.cond37.preheader, label %for.body, !llvm.loop !5

for.cond37.preheader:                             ; preds = %for.cond
  %call.i134151 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp42.not152 = icmp eq i32 %call.i134151, 2147483644
  br i1 %cmp42.not152, label %if.end44, label %if.then43

for.body:                                         ; preds = %entry, %for.cond
  %i.0150 = phi i32 [ -3, %entry ], [ %inc, %for.cond ]
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp1.not = icmp eq i32 %call.i, %i.0150
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %for.body
  %call.i121 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i = sdiv i32 %call.i121, 2
  %div3 = sdiv i32 %i.0150, 2
  %cmp4.not = icmp eq i32 %div.i, %div3
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end
  %call.i122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i123 = sdiv i32 %call.i122, 3
  %div8 = sdiv i32 %i.0150, 3
  %cmp9.not = icmp eq i32 %div.i123, %div8
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end6
  tail call void @abort() #4
  unreachable

if.end11:                                         ; preds = %if.end6
  %call.i124 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i125 = sdiv i32 %call.i124, 4
  %div13 = sdiv i32 %i.0150, 4
  %cmp14.not = icmp eq i32 %div.i125, %div13
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end11
  tail call void @abort() #4
  unreachable

if.end16:                                         ; preds = %if.end11
  %call.i126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i127 = sdiv i32 %call.i126, 5
  %div18 = sdiv i32 %i.0150, 5
  %cmp19.not = icmp eq i32 %div.i127, %div18
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end16
  tail call void @abort() #4
  unreachable

if.end21:                                         ; preds = %if.end16
  %call.i128 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i129 = sdiv i32 %call.i128, 6
  %div23 = sdiv i32 %i.0150, 6
  %cmp24.not = icmp eq i32 %div.i129, %div23
  br i1 %cmp24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  tail call void @abort() #4
  unreachable

if.end26:                                         ; preds = %if.end21
  %call.i130 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i131 = sdiv i32 %call.i130, 7
  %div28 = sdiv i32 %i.0150, 7
  %cmp29.not = icmp eq i32 %div.i131, %div28
  br i1 %cmp29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  tail call void @abort() #4
  unreachable

if.end31:                                         ; preds = %if.end26
  %call.i132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i133 = sdiv i32 %call.i132, 8
  %div33 = sdiv i32 %i.0150, 8
  %cmp34.not = icmp eq i32 %div.i133, %div33
  br i1 %cmp34.not, label %for.cond, label %if.then35

if.then35:                                        ; preds = %if.end31
  tail call void @abort() #4
  unreachable

for.cond37:                                       ; preds = %if.end74
  %inc81 = add nuw nsw i32 %i.1153, 1
  %call.i134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp42.not = icmp eq i32 %call.i134, %inc81
  br i1 %cmp42.not, label %if.end44, label %if.then43, !llvm.loop !8

if.then43:                                        ; preds = %for.cond37, %for.cond37.preheader
  tail call void @abort() #4
  unreachable

if.end44:                                         ; preds = %for.cond37.preheader, %for.cond37
  %i.1153 = phi i32 [ %inc81, %for.cond37 ], [ 2147483644, %for.cond37.preheader ]
  %call.i136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i137 = sdiv i32 %call.i136, 2
  %div46118 = lshr i32 %i.1153, 1
  %cmp47.not = icmp eq i32 %div.i137, %div46118
  br i1 %cmp47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end44
  tail call void @abort() #4
  unreachable

if.end49:                                         ; preds = %if.end44
  %call.i138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i139 = sdiv i32 %call.i138, 3
  %div51 = udiv i32 %i.1153, 3
  %cmp52.not = icmp eq i32 %div.i139, %div51
  br i1 %cmp52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end49
  tail call void @abort() #4
  unreachable

if.end54:                                         ; preds = %if.end49
  %call.i140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i141 = sdiv i32 %call.i140, 4
  %div56119 = lshr i32 %i.1153, 2
  %cmp57.not = icmp eq i32 %div.i141, %div56119
  br i1 %cmp57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end54
  tail call void @abort() #4
  unreachable

if.end59:                                         ; preds = %if.end54
  %call.i142 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i143 = sdiv i32 %call.i142, 5
  %div61 = udiv i32 %i.1153, 5
  %cmp62.not = icmp eq i32 %div.i143, %div61
  br i1 %cmp62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end59
  tail call void @abort() #4
  unreachable

if.end64:                                         ; preds = %if.end59
  %call.i144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i145 = sdiv i32 %call.i144, 6
  %div66 = udiv i32 %i.1153, 6
  %cmp67.not = icmp eq i32 %div.i145, %div66
  br i1 %cmp67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end64
  tail call void @abort() #4
  unreachable

if.end69:                                         ; preds = %if.end64
  %call.i146 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i147 = sdiv i32 %call.i146, 7
  %div71 = udiv i32 %i.1153, 7
  %cmp72.not = icmp eq i32 %div.i147, %div71
  br i1 %cmp72.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end69
  tail call void @abort() #4
  unreachable

if.end74:                                         ; preds = %if.end69
  %call.i148 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %div.i149 = sdiv i32 %call.i148, 8
  %div76120 = lshr i32 %i.1153, 3
  %cmp77.not = icmp eq i32 %div.i149, %div76120
  br i1 %cmp77.not, label %for.cond37, label %if.then78

if.then78:                                        ; preds = %if.end74
  tail call void @abort() #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!8 = distinct !{!8, !6, !7}
