; 190295677951941534340389875457163836480
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190295677951941534340389875457163836480_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190295677951941534340389875457163836480.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] zeroinitializer, i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] zeroinitializer, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 8
@b = dso_local local_unnamed_addr global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, [2 x i8] zeroinitializer }, align 8
@c = dso_local local_unnamed_addr global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 -1, i8 -1, i8 -1, i8 -1, i8 1, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 8
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %bf.load = load i64, ptr @a, align 8
  %bf.clear = and i64 %bf.load, 8589934591
  %mul = mul i64 %bf.clear, %bf.clear
  %cmp.not = icmp eq i64 %mul, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bf.load5 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 8
  %bf.clear6 = and i64 %bf.load5, 1099511627775
  %mul7 = mul i64 %bf.clear6, %bf.clear
  %mul21 = mul i64 %bf.clear6, %bf.clear6
  %0 = or i64 %mul7, %mul21
  %or.cond = icmp eq i64 %0, 0
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %bf.load23 = load i64, ptr @a, align 8
  %bf.clear24 = and i64 %bf.load23, 8589934591
  %bf.load25 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 16), align 8
  %bf.clear26 = and i64 %bf.load25, 2199023255551
  %mul27 = mul i64 %bf.clear26, %bf.clear24
  %cmp28.not = icmp eq i64 %mul27, 1099511627776
  br i1 %cmp28.not, label %lor.lhs.false29, label %if.then57

lor.lhs.false29:                                  ; preds = %if.end
  %bf.load30 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 8
  %bf.clear31 = and i64 %bf.load30, 1099511627775
  %mul34 = mul i64 %bf.clear31, %bf.clear26
  %cmp35.not = icmp eq i64 %mul34, 1099511627776
  %mul55 = mul i64 %bf.clear26, %bf.clear26
  %cmp56.not = icmp eq i64 %mul55, 1099511627776
  %or.cond210 = and i1 %cmp56.not, %cmp35.not
  br i1 %or.cond210, label %if.end58, label %if.then57

if.then57:                                        ; preds = %lor.lhs.false29, %if.end
  tail call void @abort() #3
  unreachable

if.end58:                                         ; preds = %lor.lhs.false29
  tail call void @abort() #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
