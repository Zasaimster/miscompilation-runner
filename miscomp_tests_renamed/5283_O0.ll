; 193347769638493929236746690943122732618
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/193347769638493929236746690943122732618.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/193347769638493929236746690943122732618.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dd(i32 noundef %x, i32 noundef %d) #0 {
entry:
  %x.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %d, ptr %d.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %d.addr, align 4
  %div = sdiv i32 %0, %1
  ret i32 %div
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  br i1 true, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %call = call i32 @dd(i32 noundef %0, i32 noundef 1)
  %1 = load i32, ptr %i, align 4
  %div = sdiv i32 %1, 1
  %cmp = icmp ne i32 %call, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %call1 = call i32 @dd(i32 noundef %2, i32 noundef 2)
  %3 = load i32, ptr %i, align 4
  %div2 = sdiv i32 %3, 2
  %cmp3 = icmp ne i32 %call1, %div2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end5:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %call6 = call i32 @dd(i32 noundef %4, i32 noundef 3)
  %5 = load i32, ptr %i, align 4
  %div7 = sdiv i32 %5, 3
  %cmp8 = icmp ne i32 %call6, %div7
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @abort() #3
  unreachable

if.end10:                                         ; preds = %if.end5
  %6 = load i32, ptr %i, align 4
  %call11 = call i32 @dd(i32 noundef %6, i32 noundef 4)
  %7 = load i32, ptr %i, align 4
  %div12 = sdiv i32 %7, 4
  %cmp13 = icmp ne i32 %call11, %div12
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @abort() #3
  unreachable

if.end15:                                         ; preds = %if.end10
  %8 = load i32, ptr %i, align 4
  %call16 = call i32 @dd(i32 noundef %8, i32 noundef 5)
  %9 = load i32, ptr %i, align 4
  %div17 = sdiv i32 %9, 5
  %cmp18 = icmp ne i32 %call16, %div17
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.end15
  %10 = load i32, ptr %i, align 4
  %call21 = call i32 @dd(i32 noundef %10, i32 noundef 6)
  %11 = load i32, ptr %i, align 4
  %div22 = sdiv i32 %11, 6
  %cmp23 = icmp ne i32 %call21, %div22
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @abort() #3
  unreachable

if.end25:                                         ; preds = %if.end20
  %12 = load i32, ptr %i, align 4
  %call26 = call i32 @dd(i32 noundef %12, i32 noundef 7)
  %13 = load i32, ptr %i, align 4
  %div27 = sdiv i32 %13, 7
  %cmp28 = icmp ne i32 %call26, %div27
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @abort() #3
  unreachable

if.end30:                                         ; preds = %if.end25
  %14 = load i32, ptr %i, align 4
  %call31 = call i32 @dd(i32 noundef %14, i32 noundef 8)
  %15 = load i32, ptr %i, align 4
  %div32 = sdiv i32 %15, 8
  %cmp33 = icmp ne i32 %call31, %div32
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @abort() #3
  unreachable

if.end35:                                         ; preds = %if.end30
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 2147483644, ptr %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc79, %for.end
  %17 = load i32, ptr %i, align 4
  %cmp37 = icmp ule i32 %17, -2147483646
  br i1 %cmp37, label %for.body38, label %for.end81

for.body38:                                       ; preds = %for.cond36
  %18 = load i32, ptr %i, align 4
  %call39 = call i32 @dd(i32 noundef %18, i32 noundef 1)
  %19 = load i32, ptr %i, align 4
  %div40 = sdiv i32 %19, 1
  %cmp41 = icmp ne i32 %call39, %div40
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body38
  call void @abort() #3
  unreachable

if.end43:                                         ; preds = %for.body38
  %20 = load i32, ptr %i, align 4
  %call44 = call i32 @dd(i32 noundef %20, i32 noundef 2)
  %21 = load i32, ptr %i, align 4
  %div45 = sdiv i32 %21, 2
  %cmp46 = icmp ne i32 %call44, %div45
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @abort() #3
  unreachable

if.end48:                                         ; preds = %if.end43
  %22 = load i32, ptr %i, align 4
  %call49 = call i32 @dd(i32 noundef %22, i32 noundef 3)
  %23 = load i32, ptr %i, align 4
  %div50 = sdiv i32 %23, 3
  %cmp51 = icmp ne i32 %call49, %div50
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  call void @abort() #3
  unreachable

if.end53:                                         ; preds = %if.end48
  %24 = load i32, ptr %i, align 4
  %call54 = call i32 @dd(i32 noundef %24, i32 noundef 4)
  %25 = load i32, ptr %i, align 4
  %div55 = sdiv i32 %25, 4
  %cmp56 = icmp ne i32 %call54, %div55
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end53
  call void @abort() #3
  unreachable

if.end58:                                         ; preds = %if.end53
  %26 = load i32, ptr %i, align 4
  %call59 = call i32 @dd(i32 noundef %26, i32 noundef 5)
  %27 = load i32, ptr %i, align 4
  %div60 = sdiv i32 %27, 5
  %cmp61 = icmp ne i32 %call59, %div60
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end58
  call void @abort() #3
  unreachable

if.end63:                                         ; preds = %if.end58
  %28 = load i32, ptr %i, align 4
  %call64 = call i32 @dd(i32 noundef %28, i32 noundef 6)
  %29 = load i32, ptr %i, align 4
  %div65 = sdiv i32 %29, 6
  %cmp66 = icmp ne i32 %call64, %div65
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end63
  call void @abort() #3
  unreachable

if.end68:                                         ; preds = %if.end63
  %30 = load i32, ptr %i, align 4
  %call69 = call i32 @dd(i32 noundef %30, i32 noundef 7)
  %31 = load i32, ptr %i, align 4
  %div70 = sdiv i32 %31, 7
  %cmp71 = icmp ne i32 %call69, %div70
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end68
  call void @abort() #3
  unreachable

if.end73:                                         ; preds = %if.end68
  %32 = load i32, ptr %i, align 4
  %call74 = call i32 @dd(i32 noundef %32, i32 noundef 8)
  %33 = load i32, ptr %i, align 4
  %div75 = sdiv i32 %33, 8
  %cmp76 = icmp ne i32 %call74, %div75
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end73
  call void @abort() #3
  unreachable

if.end78:                                         ; preds = %if.end73
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %34 = load i32, ptr %i, align 4
  %inc80 = add nsw i32 %34, 1
  store i32 %inc80, ptr %i, align 4
  br label %for.cond36, !llvm.loop !6

for.end81:                                        ; preds = %for.cond36
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
