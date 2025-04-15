; 111039383971322715944839963620155722242
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/111039383971322715944839963620155722242_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/111039383971322715944839963620155722242.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i32, i32, ptr, float }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(ptr noundef byval(%struct.foo) align 8 %f, ptr noundef %p, i32 noundef %n, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %call = call i32 (i32, i32, ...) @show(i32 noundef 10, i32 noundef 20)
  %0 = load ptr, ptr %p.addr, align 8
  %j = getelementptr inbounds nuw %struct.foo, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %j, align 4
  %2 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %1, %2
  ret i32 %add
}

declare i32 @show(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca %struct.foo, align 8
  store i32 0, ptr %retval, align 4
  %j = getelementptr inbounds nuw %struct.foo, ptr %f, i32 0, i32 1
  store i32 1, ptr %j, align 4
  %i = getelementptr inbounds nuw %struct.foo, ptr %f, i32 0, i32 0
  store i32 1, ptr %i, align 8
  %call = call i32 (ptr, ptr, i32, ...) @f1(ptr noundef byval(%struct.foo) align 8 %f, ptr noundef %f, i32 noundef 2)
  %call1 = call i32 (ptr, ptr, i32, ...) @f1(ptr noundef byval(%struct.foo) align 8 %f, ptr noundef %f, i32 noundef 2, i32 noundef 1, ptr noundef byval(%struct.foo) align 8 %f, ptr noundef %f)
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
