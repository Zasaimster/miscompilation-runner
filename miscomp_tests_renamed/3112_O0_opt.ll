; 154515096672724451964779541021488878440
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154515096672724451964779541021488878440_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154515096672724451964779541021488878440.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blah = type { i32, i32 }

@__const.main.s = private unnamed_addr constant %struct.blah { i32 1, i32 2 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @die(i64 %arg.coerce) #0 {
entry:
  %arg = alloca %struct.blah, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store i64 %arg.coerce, ptr %arg, align 4
  %0 = load i32, ptr %i, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca %struct.blah, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc1 = add nsw i32 %4, 1
  store i32 %inc1, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.blah, ptr %vla, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 4 %arg, i64 8, i1 false)
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds %struct.blah, ptr %vla, i64 0
  %m1 = getelementptr inbounds nuw %struct.blah, ptr %arrayidx2, i32 0, i32 0
  %5 = load i32, ptr %m1, align 16
  %cmp3 = icmp ne i32 %5, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %for.end
  %6 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %6)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.blah, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %s, ptr align 4 @__const.main.s, i64 8, i1 false)
  %0 = load i64, ptr %s, align 4
  call void @die(i64 %0)
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

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
