; 175976432051985130311263037274289721825
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175976432051985130311263037274289721825.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175976432051985130311263037274289721825.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i64 }

@e = dso_local global i32 1, align 4
@d = internal global [6 x %struct.S] zeroinitializer, align 16
@i = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"This will always print the same value: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @e, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.S], ptr @d, i64 0, i64 %idxprom
  %bf.load = load i64, ptr %arrayidx, align 8
  %bf.clear = and i64 %bf.load, -32768
  %bf.set = or i64 %bf.clear, 1
  store i64 %bf.set, ptr %arrayidx, align 8
  %2 = load i32, ptr @i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [6 x %struct.S], ptr @d, i64 0, i64 %idxprom1
  %bf.load3 = load i64, ptr %arrayidx2, align 8
  %bf.clear4 = and i64 %bf.load3, -2305843004918726657
  %bf.set5 = or i64 %bf.clear4, 4294967296
  store i64 %bf.set5, ptr %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr @e, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  %bf.load6 = load i64, ptr @d, align 16
  %bf.shl = shl i64 %bf.load6, 3
  %bf.ashr = ashr i64 %bf.shl, 35
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp ne i32 %bf.cast, 1
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

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
