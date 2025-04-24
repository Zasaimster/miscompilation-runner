; 189618308864056566240683164678528819465
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/189618308864056566240683164678528819465_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/189618308864056566240683164678528819465.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array1 = private unnamed_addr constant [1 x i32] [i32 1], align 4
@__const.main.array2 = private unnamed_addr constant [2 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] zeroinitializer], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array1 = alloca [1 x i32], align 4
  %array2 = alloca [2 x [1 x i32]], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array1, ptr align 4 @__const.main.array1, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array2, ptr align 4 @__const.main.array2, i64 8, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
