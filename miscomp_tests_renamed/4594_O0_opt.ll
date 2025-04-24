; 181246186091110418522392171165263055841
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/181246186091110418522392171165263055841_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/181246186091110418522392171165263055841.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, [1 x i8] }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@__const.foo.x = private unnamed_addr constant { i64, [1 x i8], [7 x i8] } { i64 2, [1 x i8] zeroinitializer, [7 x i8] zeroinitializer }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo()
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 1, ptr %tmp, align 4
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo() #0 {
entry:
  %x = alloca %struct.anon, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %x, ptr align 8 @__const.foo.x, i64 16, i1 false)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
