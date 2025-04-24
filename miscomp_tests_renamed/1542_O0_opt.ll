; 127530775123307615870804631515973697358
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127530775123307615870804631515973697358_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127530775123307615870804631515973697358.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"2\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"3\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"out\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fred(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, %1
  switch i32 %add, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %return

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %entry
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @fred(i32 noundef 1)
  call void @fred(i32 noundef 2)
  call void @fred(i32 noundef 3)
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
