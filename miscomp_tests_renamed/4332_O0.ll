; 172745370331435468054989309733993913255
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/172745370331435468054989309733993913255.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/172745370331435468054989309733993913255.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._st = type { i64 }

@g.constreg = internal constant [1 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"Finished!\0A\00", align 1
@f.constreg = internal constant [1 x i32] [i32 -16843010], align 4
@next = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @g() #0 {
entry:
  %next = alloca ptr, align 8
  %nIndx = alloca i32, align 4
  store ptr null, ptr %next, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %nIndx, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @g.constreg, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %next, align 8
  %3 = zext i32 %1 to i64
  %bf.load = load i64, ptr %2, align 4
  %bf.value = and i64 %3, 16777215
  %bf.clear = and i64 %bf.load, -16777216
  %bf.set = or i64 %bf.clear, %bf.value
  store i64 %bf.set, ptr %2, align 4
  %bf.result.shl = shl i64 %bf.value, 40
  %bf.result.ashr = ashr i64 %bf.result.shl, 40
  %bf.result.cast = trunc i64 %bf.result.ashr to i32
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f() #0 {
entry:
  %nIndx = alloca i32, align 4
  store i32 0, ptr %nIndx, align 4
  %0 = load i32, ptr %nIndx, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @f.constreg, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr @next, align 8
  %3 = zext i32 %1 to i64
  %bf.load = load i64, ptr %2, align 4
  %bf.value = and i64 %3, 16777215
  %bf.clear = and i64 %bf.load, -16777216
  %bf.set = or i64 %bf.clear, %bf.value
  store i64 %bf.set, ptr %2, align 4
  %bf.result.shl = shl i64 %bf.value, 40
  %bf.result.ashr = ashr i64 %bf.result.shl, 40
  %bf.result.cast = trunc i64 %bf.result.ashr to i32
  %4 = load i32, ptr %nIndx, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [1 x i32], ptr @f.constreg, i64 0, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = load ptr, ptr @next, align 8
  %7 = zext i32 %5 to i64
  %bf.load3 = load i64, ptr %6, align 4
  %bf.value4 = and i64 %7, 16777215
  %bf.shl = shl i64 %bf.value4, 32
  %bf.clear5 = and i64 %bf.load3, -72057589742960641
  %bf.set6 = or i64 %bf.clear5, %bf.shl
  store i64 %bf.set6, ptr %6, align 4
  %bf.result.shl7 = shl i64 %bf.value4, 40
  %bf.result.ashr8 = ashr i64 %bf.result.shl7, 40
  %bf.result.cast9 = trunc i64 %bf.result.ashr8 to i32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct._st, align 4
  store i32 0, ptr %retval, align 4
  store ptr %a, ptr @next, align 8
  call void @f()
  %0 = load ptr, ptr @next, align 8
  %bf.load = load i64, ptr %0, align 4
  %bf.shl = shl i64 %bf.load, 40
  %bf.ashr = ashr i64 %bf.shl, 40
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp ne i32 %bf.cast, -65794
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @next, align 8
  %bf.load1 = load i64, ptr %1, align 4
  %bf.shl2 = shl i64 %bf.load1, 8
  %bf.ashr3 = ashr i64 %bf.shl2, 40
  %bf.cast4 = trunc i64 %bf.ashr3 to i32
  %cmp5 = icmp ne i32 %bf.cast4, -65794
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end7:                                          ; preds = %if.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
