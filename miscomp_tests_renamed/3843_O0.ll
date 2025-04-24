; 167121428868175588432504939347173438506
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167121428868175588432504939347173438506.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167121428868175588432504939347173438506.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.C, ptr }
%struct.C = type { %struct.D, i64, i64, i64, i64, i64 }
%struct.D = type { i32, ptr }
%struct.A = type { ptr, ptr }

@y = dso_local global %struct.B zeroinitializer, align 8
@x = dso_local global %struct.B zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %b2 = getelementptr inbounds nuw %struct.B, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %b2, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %y.addr, align 8
  %b21 = getelementptr inbounds nuw %struct.B, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %b21, align 8
  store ptr %3, ptr %a, align 8
  %4 = load ptr, ptr %x.addr, align 8
  %b22 = getelementptr inbounds nuw %struct.B, ptr %4, i32 0, i32 1
  store ptr %3, ptr %b22, align 8
  %5 = load ptr, ptr %y.addr, align 8
  %b23 = getelementptr inbounds nuw %struct.B, ptr %5, i32 0, i32 1
  store ptr null, ptr %b23, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load ptr, ptr %a, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %x.addr, align 8
  %b1 = getelementptr inbounds nuw %struct.B, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %a, align 8
  %a2 = getelementptr inbounds nuw %struct.A, ptr %8, i32 0, i32 1
  store ptr %b1, ptr %a2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %a, align 8
  %a1 = getelementptr inbounds nuw %struct.A, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %a1, align 8
  store ptr %10, ptr %a, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %11 = load ptr, ptr %x.addr, align 8
  %cmp4 = icmp ult ptr %11, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store ptr inttoptr (i64 5 to ptr), ptr %x.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %12 = load ptr, ptr %y.addr, align 8
  %b27 = getelementptr inbounds nuw %struct.B, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %b27, align 8
  %cmp8 = icmp ne ptr %13, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @abort() #3
  unreachable

if.end10:                                         ; preds = %if.end6
  %14 = load ptr, ptr %x.addr, align 8
  %b111 = getelementptr inbounds nuw %struct.B, ptr %14, i32 0, i32 0
  %c3 = getelementptr inbounds nuw %struct.C, ptr %b111, i32 0, i32 2
  %15 = load i64, ptr %c3, align 8
  %cmp12 = icmp eq i64 %15, -1
  br i1 %cmp12, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end10
  %16 = load ptr, ptr %y.addr, align 8
  %b114 = getelementptr inbounds nuw %struct.B, ptr %16, i32 0, i32 0
  %c315 = getelementptr inbounds nuw %struct.C, ptr %b114, i32 0, i32 2
  %17 = load i64, ptr %c315, align 8
  %18 = load ptr, ptr %x.addr, align 8
  %b116 = getelementptr inbounds nuw %struct.B, ptr %18, i32 0, i32 0
  %c317 = getelementptr inbounds nuw %struct.C, ptr %b116, i32 0, i32 2
  store i64 %17, ptr %c317, align 8
  %19 = load ptr, ptr %y.addr, align 8
  %b118 = getelementptr inbounds nuw %struct.B, ptr %19, i32 0, i32 0
  %c4 = getelementptr inbounds nuw %struct.C, ptr %b118, i32 0, i32 3
  %20 = load i64, ptr %c4, align 8
  %21 = load ptr, ptr %x.addr, align 8
  %b119 = getelementptr inbounds nuw %struct.B, ptr %21, i32 0, i32 0
  %c420 = getelementptr inbounds nuw %struct.C, ptr %b119, i32 0, i32 3
  store i64 %20, ptr %c420, align 8
  %22 = load ptr, ptr %y.addr, align 8
  %b121 = getelementptr inbounds nuw %struct.B, ptr %22, i32 0, i32 0
  %c322 = getelementptr inbounds nuw %struct.C, ptr %b121, i32 0, i32 2
  store i64 -1, ptr %c322, align 8
  %23 = load ptr, ptr %y.addr, align 8
  %b123 = getelementptr inbounds nuw %struct.B, ptr %23, i32 0, i32 0
  %c424 = getelementptr inbounds nuw %struct.C, ptr %b123, i32 0, i32 3
  store i64 0, ptr %c424, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then13, %if.end10
  %24 = load ptr, ptr %y.addr, align 8
  %b126 = getelementptr inbounds nuw %struct.B, ptr %24, i32 0, i32 0
  %c327 = getelementptr inbounds nuw %struct.C, ptr %b126, i32 0, i32 2
  %25 = load i64, ptr %c327, align 8
  %cmp28 = icmp ne i64 %25, -1
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @abort() #3
  unreachable

if.end30:                                         ; preds = %if.end25
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 6, ptr @y, align 8
  store i64 145, ptr getelementptr inbounds nuw (%struct.C, ptr @y, i32 0, i32 2), align 8
  store i64 2448, ptr getelementptr inbounds nuw (%struct.C, ptr @y, i32 0, i32 3), align 8
  store i64 -1, ptr getelementptr inbounds nuw (%struct.C, ptr @x, i32 0, i32 2), align 8
  call void @foo(ptr noundef @x, ptr noundef @y)
  call void @exit(i32 noundef 0) #4
  unreachable
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
