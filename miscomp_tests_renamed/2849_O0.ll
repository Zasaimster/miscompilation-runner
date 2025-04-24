; 149853644619223962407781414683932630219
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/149853644619223962407781414683932630219.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/149853644619223962407781414683932630219.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Function called\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %call = call i32 (i32, ...) @square(i32 noundef 5)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %b.addr, align 4
  %conv = zext i32 %0 to i64
  call void @big(i64 noundef %conv)
  ret void
}

declare i32 @square(...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @doit(i32 noundef 1, i32 noundef 1, ptr noundef @.str.1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
