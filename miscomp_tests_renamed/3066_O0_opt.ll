; 153812157627033110403692023043565492580
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153812157627033110403692023043565492580_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153812157627033110403692023043565492580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global [32 x i8] zeroinitializer, align 16
@i = dso_local global i32 0, align 4
@cp = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca [32 x i8], align 16
  %p = alloca ptr, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %c, i8 0, i64 32, i1 false)
  %0 = load volatile i32, ptr @i, align 4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, ptr @d, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %1, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 255, ptr %x, align 4
  %2 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %3 = load i8, ptr %incdec.ptr, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, ptr %y, align 4
  %4 = load i32, ptr %j, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 25, label %sw.bb3
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load i32, ptr %x, align 4
  %xor = xor i32 %5, 2
  store i32 %xor, ptr %x, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.body
  %6 = load i32, ptr %x, align 4
  %xor2 = xor i32 %6, 4
  store i32 %xor2, ptr %x, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  %7 = load i32, ptr %x, align 4
  %xor4 = xor i32 %7, 1
  store i32 %xor4, ptr %x, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %8 = load i32, ptr %y, align 4
  %9 = load i32, ptr %x, align 4
  %or = or i32 %8, %9
  %conv5 = trunc i32 %or to i8
  %10 = load i32, ptr %j, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [32 x i8], ptr %c, i64 0, i64 %idxprom
  store i8 %conv5, ptr %arrayidx, align 1
  %11 = load ptr, ptr %p, align 8
  store volatile ptr %11, ptr @cp, align 8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %12 = load i32, ptr %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call = call i32 (...) @pointlessFunction()
  %arrayidx6 = getelementptr inbounds [32 x i8], ptr %c, i64 0, i64 0
  %13 = load i8, ptr %arrayidx6, align 16
  %conv7 = zext i8 %13 to i32
  %cmp8 = icmp ne i32 %conv7, 255
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %arrayidx10 = getelementptr inbounds [32 x i8], ptr %c, i64 0, i64 1
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %cmp12 = icmp ne i32 %conv11, 253
  br i1 %cmp12, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %arrayidx15 = getelementptr inbounds [32 x i8], ptr %c, i64 0, i64 2
  %15 = load i8, ptr %arrayidx15, align 2
  %conv16 = zext i8 %15 to i32
  %cmp17 = icmp ne i32 %conv16, 251
  br i1 %cmp17, label %if.then, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false14
  %arrayidx20 = getelementptr inbounds [32 x i8], ptr %c, i64 0, i64 3
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %16 to i32
  %cmp22 = icmp ne i32 %conv21, 255
  br i1 %cmp22, label %if.then, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %arrayidx25 = getelementptr inbounds [32 x i8], ptr %c, i64 0, i64 4
  %17 = load i8, ptr %arrayidx25, align 4
  %conv26 = zext i8 %17 to i32
  %cmp27 = icmp ne i32 %conv26, 255
  br i1 %cmp27, label %if.then, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %arrayidx30 = getelementptr inbounds [32 x i8], ptr %c, i64 0, i64 25
  %18 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %18 to i32
  %cmp32 = icmp ne i32 %conv31, 254
  br i1 %cmp32, label %if.then, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false29
  %19 = load volatile ptr, ptr @cp, align 8
  %cmp35 = icmp ne ptr %19, getelementptr inbounds (i8, ptr @d, i64 30)
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false34, %lor.lhs.false29, %lor.lhs.false24, %lor.lhs.false19, %lor.lhs.false14, %lor.lhs.false, %for.end
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false34
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @pointlessFunction(...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
