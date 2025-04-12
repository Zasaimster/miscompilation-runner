; 101064568016161225246736784870436372222
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101064568016161225246736784870436372222.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101064568016161225246736784870436372222.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @big(i64 noundef %u) #0 {
entry:
  %u.addr = alloca i64, align 8
  store i64 %u, ptr %u.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @doit(i32 noundef %a, i32 noundef %b, ptr noundef %id) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store ptr %id, ptr %id.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i64
  call void @big(i64 noundef %conv)
  %2 = load ptr, ptr %id.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %add.ptr, ptr %id.addr, align 8
  %3 = load i32, ptr %a.addr, align 4
  %conv1 = zext i32 %3 to i64
  call void @big(i64 noundef %conv1)
  %4 = load i32, ptr %b.addr, align 4
  %conv2 = zext i32 %4 to i64
  call void @big(i64 noundef %conv2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @doit(i32 noundef 1, i32 noundef 1, ptr noundef @.str)
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
