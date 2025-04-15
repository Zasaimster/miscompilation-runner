; 19862224945937063238159028722975951908
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19862224945937063238159028722975951908_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19862224945937063238159028722975951908.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4
@w = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @foo(i16 noundef zeroext %x, i16 noundef zeroext %y) #0 {
entry:
  %x.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2
  store i16 %y, ptr %y.addr, align 2
  %0 = load i16, ptr %x.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, ptr %y.addr, align 2
  %conv1 = zext i16 %1 to i32
  %add = add nsw i32 %conv, %conv1
  %conv2 = trunc i32 %add to i16
  ret i16 %conv2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
entry:
  %0 = load i32, ptr @w, align 4
  %not = xor i32 %0, -1
  %conv = trunc i32 %not to i16
  %1 = load i32, ptr @w, align 4
  %conv1 = trunc i32 %1 to i16
  %call = call zeroext i16 @foo(i16 noundef zeroext %conv, i16 noundef zeroext %conv1)
  %conv2 = zext i16 %call to i32
  store i32 %conv2, ptr @v, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @bar()
  %0 = load i32, ptr @v, align 4
  %cmp = icmp ne i32 %0, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
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
