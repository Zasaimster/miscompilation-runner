; 100596254094551257209580774891545459167
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100596254094551257209580774891545459167_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100596254094551257209580774891545459167.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.f.s = private unnamed_addr constant [14 x i8] c"abcedfg012345\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [14 x i8], align 1
  %sp = alloca ptr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s, ptr align 1 @__const.f.s, i64 14, i1 false)
  %arraydecay = getelementptr inbounds [14 x i8], ptr %s, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 12
  store ptr %add.ptr, ptr %sp, align 8
  %call = call i32 @g()
  switch i32 %call, label %sw.epilog [
    i32 10, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %0 = load ptr, ptr %sp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %sp, align 8
  %1 = load i8, ptr %incdec.ptr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %2 = load ptr, ptr %sp, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %2, i64 1
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2, ptr noundef @.str) #5
  %arrayidx = getelementptr inbounds [14 x i8], ptr %s, i64 0, i64 12
  %3 = load i8, ptr %arrayidx, align 1
  %conv4 = sext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 88
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %while.end
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f()
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { noreturn }

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
