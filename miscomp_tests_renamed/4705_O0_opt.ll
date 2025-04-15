; 194193274296873137887974820158347411281
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/194193274296873137887974820158347411281_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/194193274296873137887974820158347411281.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @find(ptr noundef %alistp) #0 {
entry:
  %alistp.addr = alloca ptr, align 8
  %blist = alloca ptr, align 8
  %list = alloca [32 x i32], align 16
  store ptr %alistp, ptr %alistp.addr, align 8
  %0 = load ptr, ptr %alistp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %alistp.addr, align 8
  store ptr %1, ptr %blist, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [32 x i32], ptr %list, i64 0, i64 3
  store i32 42, ptr %arrayidx, align 4
  %arraydecay = getelementptr inbounds [32 x i32], ptr %list, i64 0, i64 0
  store ptr %arraydecay, ptr %blist, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = load ptr, ptr %blist, align 8
  call void @aglChoosePixelFormat(ptr noundef %2)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @aglChoosePixelFormat(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  store ptr %0, ptr %b, align 8
  %1 = load ptr, ptr %b, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 3
  %2 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ne i32 %2, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @find(ptr noundef null)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
