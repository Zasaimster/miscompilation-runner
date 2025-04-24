; 161568323408456314981041184469673107293
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/161568323408456314981041184469673107293.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/161568323408456314981041184469673107293.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i16, [2 x i8] }

@foo = dso_local global %struct.foo zeroinitializer, align 4
@oldfoo = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"This branch is executed.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %k) #0 {
entry:
  %k.addr = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4
  %bf.load = load i16, ptr @foo, align 4
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.cast = zext i16 %bf.lshr to i32
  store i32 %bf.cast, ptr @oldfoo, align 4
  %0 = load i32, ptr %k.addr, align 4
  %1 = trunc i32 %0 to i16
  %bf.load1 = load i16, ptr @foo, align 4
  %bf.value = and i16 %1, 15
  %bf.shl = shl i16 %bf.value, 12
  %bf.clear = and i16 %bf.load1, 4095
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr @foo, align 4
  %bf.result.cast = zext i16 %bf.value to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret i32 2
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @bar(i32 noundef 1)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
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
