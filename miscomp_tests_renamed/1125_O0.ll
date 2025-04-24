; 119909352194109648325353279507411228068
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119909352194109648325353279507411228068.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119909352194109648325353279507411228068.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64, i64, i64 }

@a = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] zeroinitializer, i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] zeroinitializer, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 8
@b = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, [2 x i8] zeroinitializer }, align 8
@c = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 -1, i8 -1, i8 -1, i8 -1, i8 1, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %bf.load = load i64, ptr @a, align 8
  %bf.clear = and i64 %bf.load, 8589934591
  %bf.load1 = load i64, ptr @a, align 8
  %bf.clear2 = and i64 %bf.load1, 8589934591
  %mul = mul i64 %bf.clear, %bf.clear2
  %cmp = icmp ne i64 %mul, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bf.load3 = load i64, ptr @a, align 8
  %bf.clear4 = and i64 %bf.load3, 8589934591
  %bf.load5 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear6 = and i64 %bf.load5, 1099511627775
  %mul7 = mul i64 %bf.clear4, %bf.clear6
  %cmp8 = icmp ne i64 %mul7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %bf.load10 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear11 = and i64 %bf.load10, 1099511627775
  %bf.load12 = load i64, ptr @a, align 8
  %bf.clear13 = and i64 %bf.load12, 8589934591
  %mul14 = mul i64 %bf.clear11, %bf.clear13
  %cmp15 = icmp ne i64 %mul14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false9
  %bf.load17 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear18 = and i64 %bf.load17, 1099511627775
  %bf.load19 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear20 = and i64 %bf.load19, 1099511627775
  %mul21 = mul i64 %bf.clear18, %bf.clear20
  %cmp22 = icmp ne i64 %mul21, 0
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false9, %lor.lhs.false, %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false16
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
