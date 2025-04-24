; 187369646128078752588369503283220495789
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/187369646128078752588369503283220495789.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/187369646128078752588369503283220495789.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, i32 }

@e = dso_local global %struct.A zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @foo() #0 {
entry:
  %retval = alloca %struct.A, align 4
  %h = alloca [30 x %struct.A], align 16
  %retval.coerce = alloca { i64, i32 }, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %h, i8 0, i64 360, i1 false)
  %arrayidx = getelementptr inbounds [30 x %struct.A], ptr %h, i64 0, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 4 %arrayidx, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 4 %retval, i64 12, i1 false)
  %0 = load { i64, i32 }, ptr %retval.coerce, align 8
  ret { i64, i32 } %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca %struct.A, align 4
  %tmp.coerce = alloca { i64, i32 }, align 8
  store i32 0, ptr %retval, align 4
  %call = call { i64, i32 } @foo()
  store { i64, i32 } %call, ptr %tmp.coerce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 8 %tmp.coerce, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @e, ptr align 4 %tmp, i64 12, i1 false)
  %0 = load i32, ptr @e, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
