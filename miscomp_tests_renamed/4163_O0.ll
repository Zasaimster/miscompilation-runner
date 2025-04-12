; 141488899720784573418986593762584404593
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/141488899720784573418986593762584404593.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/141488899720784573418986593762584404593.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f3.x = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ff(i32 noundef %fname, i32 noundef %part, i32 noundef %nparts) #0 {
entry:
  %fname.addr = alloca i32, align 4
  %part.addr = alloca i32, align 4
  %nparts.addr = alloca i32, align 4
  store i32 %fname, ptr %fname.addr, align 4
  store i32 %part, ptr %part.addr, align 4
  store i32 %nparts, ptr %nparts.addr, align 4
  %0 = load i32, ptr %fname.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %nparts.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @f1()
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.else:                                          ; preds = %entry
  store i32 2, ptr %fname.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1() #0 {
entry:
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @ff(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3() #0 {
entry:
  %0 = load i32, ptr @f3.x, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr @f3.x, align 4
  %1 = load i32, ptr @f3.x, align 4
  ret i32 %1
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 {
entry:
  call void @abort() #2
  unreachable
}

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
