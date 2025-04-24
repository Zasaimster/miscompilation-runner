; 186853967739991435378390698896624432807
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/186853967739991435378390698896624432807_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/186853967739991435378390698896624432807.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t1 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"This won't be compiled.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %ps) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca ptr, align 8
  store ptr %ps, ptr %ps.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load ptr, ptr %ps.addr, align 8
  %a = getelementptr inbounds nuw %struct.t1, ptr %0, i32 0, i32 0
  store i32 %call, ptr %a, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %div = sdiv i32 %call1, 3
  %1 = load ptr, ptr %ps.addr, align 8
  %b = getelementptr inbounds nuw %struct.t1, ptr %1, i32 0, i32 1
  store i32 %div, ptr %b, align 4
  %2 = load ptr, ptr %ps.addr, align 8
  %c = getelementptr inbounds nuw %struct.t1, ptr %2, i32 0, i32 2
  store i32 10000, ptr %c, align 4
  %3 = load ptr, ptr %ps.addr, align 8
  %c2 = getelementptr inbounds nuw %struct.t1, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %c2, align 4
  %div3 = udiv i32 %4, 3
  %5 = load ptr, ptr %ps.addr, align 8
  %d = getelementptr inbounds nuw %struct.t1, ptr %5, i32 0, i32 3
  store i32 %div3, ptr %d, align 4
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.t1, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f(ptr noundef %s)
  %a = getelementptr inbounds nuw %struct.t1, ptr %s, i32 0, i32 0
  %0 = load i32, ptr %a, align 4
  %cmp = icmp ne i32 %0, 10000
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds nuw %struct.t1, ptr %s, i32 0, i32 1
  %1 = load i32, ptr %b, align 4
  %cmp1 = icmp ne i32 %1, 3333
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %c = getelementptr inbounds nuw %struct.t1, ptr %s, i32 0, i32 2
  %2 = load i32, ptr %c, align 4
  %cmp3 = icmp ne i32 %2, 10000
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %d = getelementptr inbounds nuw %struct.t1, ptr %s, i32 0, i32 3
  %3 = load i32, ptr %d, align 4
  %cmp5 = icmp ne i32 %3, 3333
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
