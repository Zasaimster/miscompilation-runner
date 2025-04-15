; 104058159980926288121230373037868804029
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/104058159980926288121230373037868804029.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/104058159980926288121230373037868804029.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 42, align 4
@e = dso_local global i32 -1, align 4
@f = dso_local global i16 0, align 2
@b = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @e, align 4
  %conv = trunc i32 %0 to i16
  store i16 %conv, ptr @f, align 2
  %1 = load i16, ptr @b, align 2
  %conv1 = sext i16 %1 to i32
  %cmp = icmp slt i32 %conv1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i16, ptr @f, align 2
  %conv3 = sext i16 %2 to i32
  %3 = load i16, ptr @b, align 2
  %conv4 = sext i16 %3 to i32
  %add = add nsw i32 %conv3, %conv4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, ptr %g, align 4
  %4 = load i32, ptr %g, align 4
  %and = and i32 %4, -4
  %cmp5 = icmp slt i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, ptr @a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %5 = load i32, ptr @a, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end8:                                          ; preds = %if.end
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
