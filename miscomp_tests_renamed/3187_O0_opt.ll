; 155789243378142613410235436424745781287
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/155789243378142613410235436424745781287_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/155789243378142613410235436424745781287.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i8, [3 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2() #0 {
entry:
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %foo = alloca %struct.rtx_def, align 4
  %bar = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %bf.load = load i8, ptr %foo, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, ptr %foo, align 4
  %bf.load1 = load i8, ptr %foo, align 4
  %bf.clear2 = and i8 %bf.load1, -3
  %bf.set3 = or i8 %bf.clear2, 0
  store i8 %bf.set3, ptr %foo, align 4
  %call = call ptr @f(ptr noundef %foo)
  store ptr %call, ptr %bar, align 8
  %0 = load ptr, ptr %bar, align 8
  %cmp = icmp ne ptr %0, %foo
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %bar, align 8
  %bf.load4 = load i8, ptr %1, align 4
  %bf.shl = shl i8 %bf.load4, 6
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %cmp5 = icmp ne i32 %bf.cast, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @f(ptr noundef %orig) #0 {
entry:
  %orig.addr = alloca ptr, align 8
  store ptr %orig, ptr %orig.addr, align 8
  %0 = load ptr, ptr %orig.addr, align 8
  ret ptr %0
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
