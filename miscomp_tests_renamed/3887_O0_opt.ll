; 121556722016026988471669292427546116215
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121556722016026988471669292427546116215_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121556722016026988471669292427546116215.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._st = type { i64 }

@g.constreg = internal constant [1 x i32] zeroinitializer, align 4
@f.constreg = internal constant [1 x i64] [i64 4278124286], align 8
@next = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @g() #0 {
entry:
  %next = alloca ptr, align 8
  store ptr null, ptr %next, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f() #0 {
entry:
  %nIndx = alloca i32, align 4
  store i32 0, ptr %nIndx, align 4
  %0 = load i32, ptr %nIndx, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1 x i64], ptr @f.constreg, i64 0, i64 %idxprom
  %1 = load i64, ptr %arrayidx, align 8
  %2 = load ptr, ptr @next, align 8
  %bf.load = load i64, ptr %2, align 8
  %bf.value = and i64 %1, 16777215
  %bf.clear = and i64 %bf.load, -16777216
  %bf.set = or i64 %bf.clear, %bf.value
  store i64 %bf.set, ptr %2, align 8
  %3 = load i32, ptr %nIndx, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1 x i64], ptr @f.constreg, i64 0, i64 %idxprom1
  %4 = load i64, ptr %arrayidx2, align 8
  %5 = load ptr, ptr @next, align 8
  %bf.load3 = load i64, ptr %5, align 8
  %bf.value4 = and i64 %4, 16777215
  %bf.shl = shl i64 %bf.value4, 24
  %bf.clear5 = and i64 %bf.load3, -281474959933441
  %bf.set6 = or i64 %bf.clear5, %bf.shl
  store i64 %bf.set6, ptr %5, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct._st, align 8
  store i32 0, ptr %retval, align 4
  store ptr %a, ptr @next, align 8
  call void @f()
  %0 = load ptr, ptr @next, align 8
  %bf.load = load i64, ptr %0, align 8
  %bf.shl = shl i64 %bf.load, 40
  %bf.ashr = ashr i64 %bf.shl, 40
  %conv = trunc i64 %bf.ashr to i32
  %cmp = icmp ne i32 %conv, -65794
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @next, align 8
  %bf.load2 = load i64, ptr %1, align 8
  %bf.shl3 = shl i64 %bf.load2, 16
  %bf.ashr4 = ashr i64 %bf.shl3, 40
  %conv5 = trunc i64 %bf.ashr4 to i32
  %cmp6 = icmp ne i32 %conv5, -65794
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %if.end
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
