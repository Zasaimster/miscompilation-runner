; 134832746991892837610679836957006970476
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/134832746991892837610679836957006970476.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/134832746991892837610679836957006970476.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.C, ptr }
%struct.C = type { %struct.D, i64, i64, i64, i64, i64 }
%struct.D = type { i32, ptr }

@y = dso_local global %struct.B zeroinitializer, align 8
@x = dso_local global %struct.B zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %y.addr, align 8
  %b2 = getelementptr inbounds nuw %struct.B, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %b2, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %b1 = getelementptr inbounds nuw %struct.B, ptr %2, i32 0, i32 0
  %c3 = getelementptr inbounds nuw %struct.C, ptr %b1, i32 0, i32 2
  %3 = load i64, ptr %c3, align 8
  %cmp1 = icmp eq i64 %3, -1
  br i1 %cmp1, label %if.then2, label %if.end14

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %y.addr, align 8
  %b13 = getelementptr inbounds nuw %struct.B, ptr %4, i32 0, i32 0
  %c34 = getelementptr inbounds nuw %struct.C, ptr %b13, i32 0, i32 2
  %5 = load i64, ptr %c34, align 8
  %6 = load ptr, ptr %x.addr, align 8
  %b15 = getelementptr inbounds nuw %struct.B, ptr %6, i32 0, i32 0
  %c36 = getelementptr inbounds nuw %struct.C, ptr %b15, i32 0, i32 2
  store i64 %5, ptr %c36, align 8
  %7 = load ptr, ptr %y.addr, align 8
  %b17 = getelementptr inbounds nuw %struct.B, ptr %7, i32 0, i32 0
  %c4 = getelementptr inbounds nuw %struct.C, ptr %b17, i32 0, i32 3
  %8 = load i64, ptr %c4, align 8
  %9 = load ptr, ptr %x.addr, align 8
  %b18 = getelementptr inbounds nuw %struct.B, ptr %9, i32 0, i32 0
  %c49 = getelementptr inbounds nuw %struct.C, ptr %b18, i32 0, i32 3
  store i64 %8, ptr %c49, align 8
  %10 = load ptr, ptr %y.addr, align 8
  %b110 = getelementptr inbounds nuw %struct.B, ptr %10, i32 0, i32 0
  %c311 = getelementptr inbounds nuw %struct.C, ptr %b110, i32 0, i32 2
  store i64 -1, ptr %c311, align 8
  %11 = load ptr, ptr %y.addr, align 8
  %b112 = getelementptr inbounds nuw %struct.B, ptr %11, i32 0, i32 0
  %c413 = getelementptr inbounds nuw %struct.C, ptr %b112, i32 0, i32 3
  store i64 0, ptr %c413, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then2, %if.end
  %12 = load ptr, ptr %y.addr, align 8
  %b115 = getelementptr inbounds nuw %struct.B, ptr %12, i32 0, i32 0
  %c316 = getelementptr inbounds nuw %struct.C, ptr %b115, i32 0, i32 2
  %13 = load i64, ptr %c316, align 8
  %cmp17 = icmp ne i64 %13, -1
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @abort() #3
  unreachable

if.end19:                                         ; preds = %if.end14
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
