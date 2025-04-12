; 110196042269006783519574324383055696275
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/110196042269006783519574324383055696275_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/110196042269006783519574324383055696275.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c":ab\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  %lim = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @.str, ptr %s, align 8
  %0 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 3
  store ptr %add.ptr, ptr %lim, align 8
  %1 = load ptr, ptr %s, align 8
  %2 = load ptr, ptr %lim, align 8
  %call = call ptr @begfield(i32 noundef 58, ptr noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef 1)
  %3 = load ptr, ptr %s, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %3, i64 2
  %cmp = icmp ne ptr %call, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @begfield(i32 noundef %tab, ptr noundef %ptr, ptr noundef %lim, i32 noundef %sword, i32 noundef %schar) #0 {
entry:
  %tab.addr = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  %lim.addr = alloca ptr, align 8
  %sword.addr = alloca i32, align 4
  %schar.addr = alloca i32, align 4
  store i32 %tab, ptr %tab.addr, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %lim, ptr %lim.addr, align 8
  store i32 %sword, ptr %sword.addr, align 4
  store i32 %schar, ptr %schar.addr, align 4
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  br label %while.body
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
