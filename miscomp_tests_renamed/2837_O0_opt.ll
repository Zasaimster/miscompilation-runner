; 199362998586885659925113883295294457524
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/199362998586885659925113883295294457524_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/199362998586885659925113883295294457524.c"
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
  %add.ptr = getelementptr inbounds %struct.A, ptr %1, i64 -1
  %cmp = icmp eq ptr %add.ptr, null
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
  %11 = load ptr, ptr %y.addr, align 8
  %b24 = getelementptr inbounds nuw %struct.B, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %b24, align 8
  %cmp5 = icmp ne ptr %12, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end7:                                          ; preds = %if.end
  %13 = load ptr, ptr %x.addr, align 8
  %b18 = getelementptr inbounds nuw %struct.B, ptr %13, i32 0, i32 0
  %c3 = getelementptr inbounds nuw %struct.C, ptr %b18, i32 0, i32 2
  %14 = load i64, ptr %c3, align 8
  %cmp9 = icmp eq i64 %14, -1
  br i1 %cmp9, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.end7
  %15 = load ptr, ptr %y.addr, align 8
  %b111 = getelementptr inbounds nuw %struct.B, ptr %15, i32 0, i32 0
  %c312 = getelementptr inbounds nuw %struct.C, ptr %b111, i32 0, i32 2
  %16 = load i64, ptr %c312, align 8
  %17 = load ptr, ptr %x.addr, align 8
  %b113 = getelementptr inbounds nuw %struct.B, ptr %17, i32 0, i32 0
  %c314 = getelementptr inbounds nuw %struct.C, ptr %b113, i32 0, i32 2
  store i64 %16, ptr %c314, align 8
  %18 = load ptr, ptr %y.addr, align 8
  %b115 = getelementptr inbounds nuw %struct.B, ptr %18, i32 0, i32 0
  %c4 = getelementptr inbounds nuw %struct.C, ptr %b115, i32 0, i32 3
  %19 = load i64, ptr %c4, align 8
  %20 = load ptr, ptr %x.addr, align 8
  %b116 = getelementptr inbounds nuw %struct.B, ptr %20, i32 0, i32 0
  %c417 = getelementptr inbounds nuw %struct.C, ptr %b116, i32 0, i32 3
  store i64 %19, ptr %c417, align 8
  %21 = load ptr, ptr %y.addr, align 8
  %b118 = getelementptr inbounds nuw %struct.B, ptr %21, i32 0, i32 0
  %c319 = getelementptr inbounds nuw %struct.C, ptr %b118, i32 0, i32 2
  store i64 -1, ptr %c319, align 8
  %22 = load ptr, ptr %y.addr, align 8
  %b120 = getelementptr inbounds nuw %struct.B, ptr %22, i32 0, i32 0
  %c421 = getelementptr inbounds nuw %struct.C, ptr %b120, i32 0, i32 3
  store i64 0, ptr %c421, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then10, %if.end7
  %23 = load ptr, ptr %y.addr, align 8
  %b123 = getelementptr inbounds nuw %struct.B, ptr %23, i32 0, i32 0
  %c324 = getelementptr inbounds nuw %struct.C, ptr %b123, i32 0, i32 2
  %24 = load i64, ptr %c324, align 8
  %cmp25 = icmp ne i64 %24, -1
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @abort() #3
  unreachable

if.end27:                                         ; preds = %if.end22
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
