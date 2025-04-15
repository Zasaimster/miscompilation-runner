; 163920517954292827005393610397035503816
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/163920517954292827005393610397035503816.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/163920517954292827005393610397035503816.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, [3 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %b = alloca i32, align 4
  %sdata = alloca %struct.anon, align 4
  store i32 0, ptr %retval, align 4
  store i32 10, ptr %b, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %sdata, i8 0, i64 4, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %bf.load = load i8, ptr %sdata, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %dec = add i32 %bf.cast, -1
  %0 = trunc i32 %dec to i8
  %bf.load1 = load i8, ptr %sdata, align 4
  %bf.value = and i8 %0, 1
  %bf.clear2 = and i8 %bf.load1, -2
  %bf.set = or i8 %bf.clear2, %bf.value
  store i8 %bf.set, ptr %sdata, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %cmp = icmp ugt i32 %bf.cast, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %b, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %b, align 4
  %2 = load i32, ptr %b, align 4
  %cmp3 = icmp sgt i32 %2, 100
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %3 = load i32, ptr %b, align 4
  %cmp4 = icmp ne i32 %3, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.end
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %while.end
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
