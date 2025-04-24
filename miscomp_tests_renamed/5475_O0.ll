; 197073051311953252925454183557314779969
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/197073051311953252925454183557314779969.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/197073051311953252925454183557314779969.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_layer3(i32 noundef %single) #0 {
entry:
  %single.addr = alloca i32, align 4
  %stereo1 = alloca i32, align 4
  store i32 %single, ptr %single.addr, align 4
  %0 = load i32, ptr %single.addr, align 4
  %1 = load i32, ptr %single.addr, align 4
  %add = add nsw i32 %0, %1
  %cmp = icmp sge i32 %add, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %stereo1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 2, ptr %stereo1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %single.addr, align 4
  call void @f(i32 noundef %2)
  %3 = load i32, ptr %stereo1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @do_layer3(i32 noundef -1)
  %cmp = icmp ne i32 %call, 2
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
