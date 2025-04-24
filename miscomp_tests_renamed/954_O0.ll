; 117090259020370251006477636956538295292
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/117090259020370251006477636956538295292.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/117090259020370251006477636956538295292.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type <{ i32, i32, i32, i32, i32, i64 }>

@b = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@__const.fn1.e = private unnamed_addr constant { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 } { i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 -128, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0 }, align 4
@c = dso_local global %struct.S0 zeroinitializer, align 4
@a = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"This won't print.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn1() #0 {
entry:
  %e = alloca %struct.S0, align 4
  store i32 1, ptr @b, align 4
  store i32 1, ptr @d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @b, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %e, ptr align 4 @__const.fn1.e, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @c, ptr align 4 %e, i64 28, i1 false)
  %bf.load = load i64, ptr getelementptr inbounds nuw (%struct.S0, ptr @c, i32 0, i32 5), align 4
  %bf.clear = and i64 %bf.load, -4294934529
  %bf.set = or i64 %bf.clear, 4294934528
  store i64 %bf.set, ptr getelementptr inbounds nuw (%struct.S0, ptr @c, i32 0, i32 5), align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr @a, align 4
  store i32 %1, ptr @b, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @fn1()
  %bf.load = load i64, ptr getelementptr inbounds nuw (%struct.S0, ptr @c, i32 0, i32 5), align 4
  %bf.shl = shl i64 %bf.load, 30
  %bf.ashr = ashr i64 %bf.shl, 62
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp ne i32 %bf.cast, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

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
