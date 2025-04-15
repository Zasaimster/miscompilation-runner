; 140262169790435534206245511500721320074
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140262169790435534206245511500721320074_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140262169790435534206245511500721320074.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global ptr null, align 8
@e1 = dso_local global ptr null, align 8
@e2 = dso_local global ptr null, align 8
@s = dso_local global ptr null, align 8
@s1 = dso_local global ptr null, align 8
@s2 = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %fp.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %call = call i32 (i32, ...) %0(i32 noundef %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %fp.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %call = call i32 %0(i32 noundef %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %fp.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %call = call i32 %0(i32 noundef %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f4(ptr noundef %fp, i32 noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %fp.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %3 = load i32, ptr %i.addr, align 4
  %call = call i32 %2(i32 noundef %3)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f5(ptr noundef %fp, ptr noundef %i) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store ptr %i, ptr %i.addr, align 8
  %0 = load ptr, ptr %fp.addr, align 8
  %1 = load ptr, ptr %i.addr, align 8
  %call = call i32 %0(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  ret i32 0
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
