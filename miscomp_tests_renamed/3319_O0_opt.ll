; 157813615024638754960528116564161088868
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157813615024638754960528116564161088868_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157813615024638754960528116564161088868.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [16 x i8] c"Value of x: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foobar(i32 noundef %x, i32 noundef %y, i32 noundef %z) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %a = alloca %struct.x, align 4
  %b = alloca %struct.x, align 4
  %c = alloca ptr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %z, ptr %z.addr, align 4
  store i8 0, ptr %a, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = trunc i32 %0 to i8
  %bf.load = load i8, ptr %a, align 4
  %bf.value = and i8 %1, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, ptr %a, align 4
  %2 = load i32, ptr %y.addr, align 4
  %3 = trunc i32 %2 to i8
  %bf.load1 = load i8, ptr %a, align 4
  %bf.value2 = and i8 %3, 3
  %bf.shl = shl i8 %bf.value2, 1
  %bf.clear3 = and i8 %bf.load1, -7
  %bf.set4 = or i8 %bf.clear3, %bf.shl
  store i8 %bf.set4, ptr %a, align 4
  %4 = load i32, ptr %z.addr, align 4
  %5 = trunc i32 %4 to i8
  %bf.load5 = load i8, ptr %a, align 4
  %bf.value6 = and i8 %5, 7
  %bf.shl7 = shl i8 %bf.value6, 3
  %bf.clear8 = and i8 %bf.load5, -57
  %bf.set9 = or i8 %bf.clear8, %bf.shl7
  store i8 %bf.set9, ptr %a, align 4
  %6 = getelementptr i8, ptr %a, i64 1
  call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 3, i1 false)
  store i8 0, ptr %b, align 4
  %7 = load i32, ptr %x.addr, align 4
  %8 = trunc i32 %7 to i8
  %bf.load10 = load i8, ptr %b, align 4
  %bf.value11 = and i8 %8, 1
  %bf.clear12 = and i8 %bf.load10, -2
  %bf.set13 = or i8 %bf.clear12, %bf.value11
  store i8 %bf.set13, ptr %b, align 4
  %9 = load i32, ptr %y.addr, align 4
  %10 = trunc i32 %9 to i8
  %bf.load14 = load i8, ptr %b, align 4
  %bf.value15 = and i8 %10, 3
  %bf.shl16 = shl i8 %bf.value15, 1
  %bf.clear17 = and i8 %bf.load14, -7
  %bf.set18 = or i8 %bf.clear17, %bf.shl16
  store i8 %bf.set18, ptr %b, align 4
  %11 = load i32, ptr %z.addr, align 4
  %12 = trunc i32 %11 to i8
  %bf.load19 = load i8, ptr %b, align 4
  %bf.value20 = and i8 %12, 7
  %bf.shl21 = shl i8 %bf.value20, 3
  %bf.clear22 = and i8 %bf.load19, -57
  %bf.set23 = or i8 %bf.clear22, %bf.shl21
  store i8 %bf.set23, ptr %b, align 4
  %13 = getelementptr i8, ptr %b, i64 1
  call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 3, i1 false)
  store ptr %b, ptr %c, align 8
  %14 = load ptr, ptr %c, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %14)
  %bf.load24 = load i8, ptr %a, align 4
  %bf.clear25 = and i8 %bf.load24, 1
  %bf.cast = zext i8 %bf.clear25 to i32
  %cmp = icmp ne i32 %bf.cast, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load ptr, ptr %c, align 8
  %bf.load26 = load i8, ptr %15, align 4
  %bf.lshr = lshr i8 %bf.load26, 3
  %bf.clear27 = and i8 %bf.lshr, 7
  %bf.cast28 = zext i8 %bf.clear27 to i32
  %cmp29 = icmp ne i32 %bf.cast28, 5
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call i32 @foobar(i32 noundef 1, i32 noundef 2, i32 noundef 3)
  ret i32 0
}

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
