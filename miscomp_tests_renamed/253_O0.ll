; 167528207679974540750076940404183507103
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167528207679974540750076940404183507103.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167528207679974540750076940404183507103.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@u = internal global i32 0, align 4
@next_buffer = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i32 noundef %offset) #0 {
entry:
  %retval = alloca i64, align 8
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca i32, align 4
  %x = alloca i32, align 4
  %data = alloca ptr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  %0 = load i32, ptr @u, align 4
  store i32 %0, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %i, align 4
  %mul = mul i32 %2, 52783
  %conv = zext i32 %mul to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @next_buffer, align 4
  store i32 %3, ptr %buffer, align 4
  %4 = load i32, ptr %buffer, align 4
  %mul1 = mul i32 %4, 52783
  %conv2 = zext i32 %mul1 to i64
  %5 = inttoptr i64 %conv2 to ptr
  store ptr %5, ptr %data, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %6, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @bar()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr @next_buffer, align 4
  store i32 %8, ptr %buffer, align 4
  %9 = load i32, ptr %buffer, align 4
  %mul4 = mul i32 %9, 52783
  %10 = load i32, ptr %offset.addr, align 4
  %add = add i32 %mul4, %10
  %conv5 = zext i32 %add to i64
  store i64 %conv5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i64, ptr %retval, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @foo(i32 noundef 3)
  %cmp = icmp ne i64 %call, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, ptr @next_buffer, align 4
  %call1 = call i64 @foo(i32 noundef 2)
  %cmp2 = icmp ne i64 %call1, 52785
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
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
