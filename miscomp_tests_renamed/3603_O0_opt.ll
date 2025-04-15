; 140783983113442904294878562945064428124
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140783983113442904294878562945064428124_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140783983113442904294878562945064428124.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"This function is never called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(ptr noundef %x, i32 noundef %f, i32 noundef %g, i32 noundef %h, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %f.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %f, ptr %f.addr, align 4
  store i32 %g, ptr %g.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %cmp2 = icmp ne i32 %call1, 2
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %0 = load ptr, ptr %x.addr, align 8
  %c = getelementptr inbounds nuw %struct.baz, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %c, align 4
  %cmp4 = icmp ne i32 %1, 3
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %2 = load ptr, ptr %x.addr, align 8
  %d = getelementptr inbounds nuw %struct.baz, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %d, align 4
  %cmp6 = icmp ne i32 %3, 4
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %4 = load ptr, ptr %x.addr, align 8
  %e = getelementptr inbounds nuw %struct.baz, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %e, align 4
  %cmp8 = icmp ne i32 %5, 5
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %6 = load i32, ptr %f.addr, align 4
  %cmp10 = icmp ne i32 %6, 6
  br i1 %cmp10, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %7 = load i32, ptr %g.addr, align 4
  %cmp12 = icmp ne i32 %7, 7
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %8 = load i32, ptr %h.addr, align 4
  %cmp14 = icmp ne i32 %8, 8
  br i1 %cmp14, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %9 = load i32, ptr %i.addr, align 4
  %cmp16 = icmp ne i32 %9, 9
  br i1 %cmp16, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %10 = load i32, ptr %j.addr, align 4
  %cmp18 = icmp ne i32 %10, 10
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false17, %lor.lhs.false15, %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false17
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef byval(%struct.baz) align 8 %x, ptr noundef %y) #0 {
entry:
  %y.addr = alloca ptr, align 8
  store ptr %y, ptr %y.addr, align 8
  call void @bar(ptr noundef %x, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.baz, align 8
  store i32 0, ptr %retval, align 4
  %a = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 0
  store i32 1, ptr %a, align 4
  %b = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 1
  store i32 2, ptr %b, align 4
  %c = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 2
  store i32 3, ptr %c, align 4
  %d = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 3
  store i32 4, ptr %d, align 4
  %e = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 4
  store i32 5, ptr %e, align 4
  call void @foo(ptr noundef byval(%struct.baz) align 8 %x, ptr noundef null)
  call void @exit(i32 noundef 0) #5
  unreachable
}

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
