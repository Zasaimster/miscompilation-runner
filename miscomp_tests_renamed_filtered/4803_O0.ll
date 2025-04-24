; 184904079988731706239249849730770906081
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/184904079988731706239249849730770906081.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/184904079988731706239249849730770906081.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(i64 noundef %x, i32 noundef %y, i32 noundef %z, ptr noundef %p) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %w = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  store i32 %y, ptr %y.addr, align 4
  store i32 %z, ptr %z.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load i32, ptr %z.addr, align 4
  %and = and i32 %0, 31
  %shl = shl i32 0, %and
  store i32 %shl, ptr %w, align 4
  %1 = load i32, ptr %w, align 4
  %conv = zext i32 %1 to i64
  %and1 = and i64 %conv, 4294967295
  %2 = load i32, ptr %z.addr, align 4
  %sh_prom = zext i32 %2 to i64
  %shl2 = shl i64 %and1, %sh_prom
  %3 = load ptr, ptr %p.addr, align 8
  %4 = load i64, ptr %3, align 8
  %or = or i64 %4, %shl2
  store i64 %or, ptr %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %a, align 8
  call void @g(i64 noundef -2401053092593056409, i32 noundef 0, i32 noundef 0, ptr noundef %a)
  %0 = load i64, ptr %a, align 8
  %cmp = icmp eq i64 %0, 19088743
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 1
  ret i32 %cond
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
