; 121560578627806871884786080295410276779
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121560578627806871884786080295410276779_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121560578627806871884786080295410276779.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U1 = type { i32 }

@d = dso_local global i32 0, align 4
@e = dso_local global ptr @d, align 8
@u = dso_local global %union.U1 { i32 67305985 }, align 4
@c = dso_local global i32 0, align 4
@__const.main.f = private unnamed_addr constant %union.U1 { i32 67305985 }, align 4
@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca %union.U1, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr @c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @c, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %f, ptr align 4 @__const.main.f, i64 4, i1 false)
  %1 = load i32, ptr @c, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load volatile i32, ptr @b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %bf.load = load i16, ptr %f, align 4
  %bf.clear = and i16 %bf.load, 32767
  %bf.cast = zext i16 %bf.clear to i32
  %3 = load ptr, ptr @e, align 8
  store i32 %bf.cast, ptr %3, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr @c, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
