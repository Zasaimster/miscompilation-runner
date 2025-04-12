; 161709648857167326168744165851085637926
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/161709648857167326168744165851085637926_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/161709648857167326168744165851085637926.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %b, i32 noundef %c) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %v = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  store i64 0, ptr %v, align 8
  %0 = load i32, ptr %c.addr, align 4
  switch i32 %0, label %sw.default [
    i32 100, label %sw.bb
    i32 107, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %b.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i64
  %shl = shl i64 %conv, 8
  %3 = load ptr, ptr %b.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i64
  %add = add i64 %shl, %conv2
  store i64 %add, ptr %v, align 8
  %5 = load i64, ptr %v, align 8
  %shr = lshr i64 %5, 9
  store i64 %shr, ptr %v, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %6 = load ptr, ptr %b.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %shr6 = ashr i32 %conv5, 4
  %conv7 = sext i32 %shr6 to i64
  store i64 %conv7, ptr %v, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @abort() #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  store i8 -86, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 1
  store i8 5, ptr %arrayidx1, align 1
  %arraydecay = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  %call = call i32 @f(ptr noundef %arraydecay, i32 noundef 100)
  %cmp = icmp ne i32 %call, 85
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
