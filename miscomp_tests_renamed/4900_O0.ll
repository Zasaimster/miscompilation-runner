; 157033522822890016168832890627472577104
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157033522822890016168832890627472577104.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157033522822890016168832890627472577104.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.C, ptr }
%struct.C = type { %struct.D, i64, i64, i64, i64, i64 }
%struct.D = type { i32, ptr }
%struct.A = type { ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"This is dead code.\0A\00", align 1
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
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %y.addr, align 8
  %b2 = getelementptr inbounds nuw %struct.B, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %b2, align 8
  store ptr %1, ptr %a, align 8
  %2 = load ptr, ptr %x.addr, align 8
  %b21 = getelementptr inbounds nuw %struct.B, ptr %2, i32 0, i32 1
  store ptr %1, ptr %b21, align 8
  %3 = load ptr, ptr %y.addr, align 8
  %b22 = getelementptr inbounds nuw %struct.B, ptr %3, i32 0, i32 1
  store ptr null, ptr %b22, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %a, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %x.addr, align 8
  %b1 = getelementptr inbounds nuw %struct.B, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %a, align 8
  %a2 = getelementptr inbounds nuw %struct.A, ptr %6, i32 0, i32 1
  store ptr %b1, ptr %a2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %a, align 8
  %a1 = getelementptr inbounds nuw %struct.A, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %a1, align 8
  store ptr %8, ptr %a, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %9 = load ptr, ptr %y.addr, align 8
  %b23 = getelementptr inbounds nuw %struct.B, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %b23, align 8
  %cmp4 = icmp ne ptr %10, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %x.addr, align 8
  %b17 = getelementptr inbounds nuw %struct.B, ptr %11, i32 0, i32 0
  %c3 = getelementptr inbounds nuw %struct.C, ptr %b17, i32 0, i32 2
  %12 = load i64, ptr %c3, align 8
  %cmp8 = icmp eq i64 %12, -1
  br i1 %cmp8, label %if.then9, label %if.end21

if.then9:                                         ; preds = %if.end6
  %13 = load ptr, ptr %y.addr, align 8
  %b110 = getelementptr inbounds nuw %struct.B, ptr %13, i32 0, i32 0
  %c311 = getelementptr inbounds nuw %struct.C, ptr %b110, i32 0, i32 2
  %14 = load i64, ptr %c311, align 8
  %15 = load ptr, ptr %x.addr, align 8
  %b112 = getelementptr inbounds nuw %struct.B, ptr %15, i32 0, i32 0
  %c313 = getelementptr inbounds nuw %struct.C, ptr %b112, i32 0, i32 2
  store i64 %14, ptr %c313, align 8
  %16 = load ptr, ptr %y.addr, align 8
  %b114 = getelementptr inbounds nuw %struct.B, ptr %16, i32 0, i32 0
  %c4 = getelementptr inbounds nuw %struct.C, ptr %b114, i32 0, i32 3
  %17 = load i64, ptr %c4, align 8
  %18 = load ptr, ptr %x.addr, align 8
  %b115 = getelementptr inbounds nuw %struct.B, ptr %18, i32 0, i32 0
  %c416 = getelementptr inbounds nuw %struct.C, ptr %b115, i32 0, i32 3
  store i64 %17, ptr %c416, align 8
  %19 = load ptr, ptr %y.addr, align 8
  %b117 = getelementptr inbounds nuw %struct.B, ptr %19, i32 0, i32 0
  %c318 = getelementptr inbounds nuw %struct.C, ptr %b117, i32 0, i32 2
  store i64 -1, ptr %c318, align 8
  %20 = load ptr, ptr %y.addr, align 8
  %b119 = getelementptr inbounds nuw %struct.B, ptr %20, i32 0, i32 0
  %c420 = getelementptr inbounds nuw %struct.C, ptr %b119, i32 0, i32 3
  store i64 0, ptr %c420, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then9, %if.end6
  %21 = load ptr, ptr %y.addr, align 8
  %b122 = getelementptr inbounds nuw %struct.B, ptr %21, i32 0, i32 0
  %c323 = getelementptr inbounds nuw %struct.C, ptr %b122, i32 0, i32 2
  %22 = load i64, ptr %c323, align 8
  %cmp24 = icmp ne i64 %22, -1
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @abort() #4
  unreachable

if.end26:                                         ; preds = %if.end21
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
