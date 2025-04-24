; 111529537793384999752073577318706708694
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/111529537793384999752073577318706708694.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/111529537793384999752073577318706708694.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"boom!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(i32 noundef %argc) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %test = alloca [1 x i8], align 1
  store i32 %argc, ptr %argc.addr, align 4
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %label

label:                                            ; preds = %if.end2, %if.then
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %label, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  ret void

if.end2:                                          ; preds = %if.end
  br label %label
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2() #0 {
entry:
  %a = alloca [1 x i32], align 4
  %b = alloca [1 x i32], align 4
  %c = alloca [1 x i32], align 4
  br label %start

start:                                            ; preds = %entry
  %arrayidx = getelementptr inbounds [1 x i32], ptr %a, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [1 x i32], ptr %b, i64 0, i64 0
  store i32 0, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [1 x i32], ptr %c, i64 0, i64 0
  store i32 0, ptr %arrayidx2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 11)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 12)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 0)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @f1(i32 noundef 2)
  call void @f2()
  call void @f3()
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
