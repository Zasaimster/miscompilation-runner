; 143641577893313987734476409287723675810
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/143641577893313987734476409287723675810_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/143641577893313987734476409287723675810.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @example2()
  %0 = zext i32 %call to i64
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %0, align 16
  store i64 %0, ptr %__vla_expr0, align 8
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 0
  store i32 1, ptr %arrayidx, align 16
  %arrayidx1 = getelementptr inbounds i32, ptr %vla, i64 1
  store i32 2, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i32, ptr %vla, i64 0
  %2 = load i32, ptr %arrayidx2, align 16
  %arrayidx3 = getelementptr inbounds i32, ptr %vla, i64 1
  %3 = load i32, ptr %arrayidx3, align 4
  %add = add nsw i32 %2, %3
  %sub = sub nsw i32 %add, 3
  store i32 %sub, ptr %retval, align 4
  %4 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %4)
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare i32 @example2(...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
