; 115419153249169556322627613869165187266
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/115419153249169556322627613869165187266.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/115419153249169556322627613869165187266.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 65536) i32 @foo(i16 noundef zeroext %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @printHello() #4
  %cmp = icmp sgt i32 %call, 32767
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = and i32 %call1, 65535
  %1 = xor i32 %0, 32768
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

declare i32 @printHello(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @printHello() #4
  %cmp.i = icmp sgt i32 %call.i, 32767
  br i1 %cmp.i, label %cond.true.i, label %if.end

cond.true.i:                                      ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = and i32 %call1.i, 65535
  %1 = icmp eq i32 %0, 32768
  br i1 %1, label %if.end, label %if.then

if.then:                                          ; preds = %cond.true.i
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry, %cond.true.i
  %call.i17 = tail call i32 (...) @printHello() #4
  %cmp.i18 = icmp sgt i32 %call.i17, 32767
  br i1 %cmp.i18, label %cond.true.i20, label %if.end4

cond.true.i20:                                    ; preds = %if.end
  %call1.i21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %2 = and i32 %call1.i21, 65535
  %3 = icmp eq i32 %2, 32768
  br i1 %3, label %if.end4, label %if.then3

if.then3:                                         ; preds = %cond.true.i20
  tail call void @abort() #5
  unreachable

if.end4:                                          ; preds = %if.end, %cond.true.i20
  %call.i23 = tail call i32 (...) @printHello() #4
  %cmp.i24 = icmp sgt i32 %call.i23, 32767
  br i1 %cmp.i24, label %cond.true.i26, label %if.end8

cond.true.i26:                                    ; preds = %if.end4
  %call1.i27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %4 = and i32 %call1.i27, 65535
  %5 = icmp eq i32 %4, 32768
  br i1 %5, label %if.end8, label %if.then7

if.then7:                                         ; preds = %cond.true.i26
  tail call void @abort() #5
  unreachable

if.end8:                                          ; preds = %if.end4, %cond.true.i26
  %call.i29 = tail call i32 (...) @printHello() #4
  %cmp.i30 = icmp sgt i32 %call.i29, 32767
  br i1 %cmp.i30, label %cond.true.i32, label %if.then11

cond.true.i32:                                    ; preds = %if.end8
  %call1.i33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %6 = and i32 %call1.i33, 65535
  %7 = icmp eq i32 %6, 32769
  br i1 %7, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8, %cond.true.i32
  tail call void @abort() #5
  unreachable

if.end12:                                         ; preds = %cond.true.i32
  %call.i35 = tail call i32 (...) @printHello() #4
  %cmp.i36 = icmp sgt i32 %call.i35, 32767
  br i1 %cmp.i36, label %cond.true.i38, label %if.then15

cond.true.i38:                                    ; preds = %if.end12
  %call1.i39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %8 = and i32 %call1.i39, 65535
  %9 = icmp eq i32 %8, 65535
  br i1 %9, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12, %cond.true.i38
  tail call void @abort() #5
  unreachable

if.end16:                                         ; preds = %cond.true.i38
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
