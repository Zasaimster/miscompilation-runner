; 177841723927018391881988808423027023189
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177841723927018391881988808423027023189_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177841723927018391881988808423027023189.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmp = dso_local global ptr null, align 8
@c = dso_local global ptr @tmp, align 8
@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@e = internal global ptr @tmp, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @fn1(ptr noundef @a)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @fn1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %g = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, ptr @f, align 4
  %cmp = icmp ult i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %g, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %g, align 4
  %cmp2 = icmp sge i32 %1, 0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load volatile i32, ptr @d, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body3
  %3 = load volatile i32, ptr @d, align 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body3
  %4 = load ptr, ptr %p.addr, align 8
  %5 = load ptr, ptr @c, align 8
  store ptr %4, ptr %5, align 8
  store ptr inttoptr (i64 30 to ptr), ptr @tmp, align 8
  %6 = load ptr, ptr @e, align 8
  store volatile ptr null, ptr %6, align 8
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %7 = load i32, ptr %g, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %g, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %8 = load i32, ptr @f, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @f, align 4
  br label %for.cond, !llvm.loop !8

for.end6:                                         ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
