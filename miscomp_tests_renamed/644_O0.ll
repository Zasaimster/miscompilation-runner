; 111551859500312642059360352826008361492
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/111551859500312642059360352826008361492.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/111551859500312642059360352826008361492.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @dummy(ptr noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %y, ptr %y.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %number_columns = alloca i32, align 4
  %cnt0 = alloca i32, align 4
  %cnt1 = alloca i32, align 4
  %i = alloca i32, align 4
  %A1 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 9, ptr %number_columns, align 4
  %0 = load i32, ptr %number_columns, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %cnt0, align 4
  store i32 0, ptr %cnt1, align 4
  %1 = load i32, ptr %number_columns, align 4
  %sub1 = sub nsw i32 %1, 1
  store i32 %sub1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  call void @dummy(ptr noundef %A1, i32 noundef %4)
  %5 = load i32, ptr %cnt0, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %cnt0, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %sub3 = sub nsw i32 %6, 1
  call void @dummy(ptr noundef %A1, i32 noundef %sub3)
  %7 = load i32, ptr %cnt1, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, ptr %cnt1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %cnt0, align 4
  %cmp5 = icmp ne i32 %9, 1
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %10 = load i32, ptr %cnt1, align 4
  %cmp6 = icmp ne i32 %10, 7
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %for.end
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %lor.lhs.false
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
