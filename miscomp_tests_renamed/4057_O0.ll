; 102239104278211290931748409630367030761
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/102239104278211290931748409630367030761.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/102239104278211290931748409630367030761.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U1 = type { i32 }

@d = dso_local global i32 0, align 4
@e = dso_local global ptr @d, align 8
@u = dso_local global %union.U1 { i32 67305985 }, align 4
@c = dso_local global i32 0, align 4
@__const.main.f = private unnamed_addr constant %union.U1 { i32 67305985 }, align 4
@b = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Positive\0A\00", align 1
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
  %3 = load i32, ptr @c, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end4

if.else:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.then3
  %bf.load = load i16, ptr %f, align 4
  %bf.clear = and i16 %bf.load, 32767
  %bf.cast = zext i16 %bf.clear to i32
  %4 = load ptr, ptr @e, align 8
  store i32 %bf.cast, ptr %4, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %5 = load i32, ptr @c, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr @d, align 4
  %bf.load5 = load volatile i16, ptr @u, align 4
  %bf.clear6 = and i16 %bf.load5, 32767
  %bf.cast7 = zext i16 %bf.clear6 to i32
  %cmp8 = icmp ne i32 %6, %bf.cast7
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end
  call void @abort() #4
  unreachable

if.end10:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.else
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
