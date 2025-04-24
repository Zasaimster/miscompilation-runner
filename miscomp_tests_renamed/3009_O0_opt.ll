; 152790112105577772849547334569763147605
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/152790112105577772849547334569763147605_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/152790112105577772849547334569763147605.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a_struct = type { i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr noundef %flags) #0 {
entry:
  %flags.addr = alloca ptr, align 8
  store ptr %flags, ptr %flags.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %flags = alloca %struct.a_struct, align 1
  store i32 0, ptr %retval, align 4
  %bf.load = load i8, ptr %flags, align 1
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %flags, align 1
  %bf.load1 = load i8, ptr %flags, align 1
  %bf.clear2 = and i8 %bf.load1, -65
  %bf.set3 = or i8 %bf.clear2, 64
  store i8 %bf.set3, ptr %flags, align 1
  %bf.load4 = load i8, ptr %flags, align 1
  %bf.clear5 = and i8 %bf.load4, 127
  %bf.set6 = or i8 %bf.clear5, -128
  store i8 %bf.set6, ptr %flags, align 1
  %bf.load7 = load i8, ptr %flags, align 1
  %bf.clear8 = and i8 %bf.load7, -4
  %bf.set9 = or i8 %bf.clear8, 2
  store i8 %bf.set9, ptr %flags, align 1
  %bf.load10 = load i8, ptr %flags, align 1
  %bf.clear11 = and i8 %bf.load10, -29
  %bf.set12 = or i8 %bf.clear11, 12
  store i8 %bf.set12, ptr %flags, align 1
  %call = call i32 @foo(ptr noundef %flags)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
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
