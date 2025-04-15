; 110394965463538750994120900192403560581
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/110394965463538750994120900192403560581.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/110394965463538750994120900192403560581.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local { i8, i64 } @foo(i8 %x.coerce0, i64 %x.coerce1, i8 %y.coerce0, i64 %y.coerce1) #0 {
entry:
  %retval = alloca %struct.S, align 8
  %x = alloca %struct.S, align 8
  %y = alloca %struct.S, align 8
  %0 = getelementptr inbounds nuw { i8, i64 }, ptr %x, i32 0, i32 0
  store i8 %x.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { i8, i64 }, ptr %x, i32 0, i32 1
  store i64 %x.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds nuw { i8, i64 }, ptr %y, i32 0, i32 0
  store i8 %y.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds nuw { i8, i64 }, ptr %y, i32 0, i32 1
  store i64 %y.coerce1, ptr %3, align 8
  %call = call i32 (...) @compute()
  %conv = sext i32 %call to i64
  %b = getelementptr inbounds nuw %struct.S, ptr %y, i32 0, i32 1
  %4 = load i64, ptr %b, align 8
  %div = sdiv i64 %conv, %4
  %b1 = getelementptr inbounds nuw %struct.S, ptr %retval, i32 0, i32 1
  store i64 %div, ptr %b1, align 8
  %5 = load { i8, i64 }, ptr %retval, align 8
  ret { i8, i64 } %5
}

declare i32 @compute(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.S, align 8
  %b = alloca %struct.S, align 8
  %coerce = alloca %struct.S, align 8
  %coerce7 = alloca %struct.S, align 8
  store i32 0, ptr %retval, align 4
  %b1 = getelementptr inbounds nuw %struct.S, ptr %a, i32 0, i32 1
  store i64 32, ptr %b1, align 8
  %b2 = getelementptr inbounds nuw %struct.S, ptr %b, i32 0, i32 1
  store i64 4, ptr %b2, align 8
  %0 = getelementptr inbounds nuw { i8, i64 }, ptr %a, i32 0, i32 0
  %1 = load i8, ptr %0, align 8
  %2 = getelementptr inbounds nuw { i8, i64 }, ptr %a, i32 0, i32 1
  %3 = load i64, ptr %2, align 8
  %4 = getelementptr inbounds nuw { i8, i64 }, ptr %b, i32 0, i32 0
  %5 = load i8, ptr %4, align 8
  %6 = getelementptr inbounds nuw { i8, i64 }, ptr %b, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %call = call { i8, i64 } @foo(i8 %1, i64 %3, i8 %5, i64 %7)
  %8 = getelementptr inbounds nuw { i8, i64 }, ptr %coerce, i32 0, i32 0
  %9 = extractvalue { i8, i64 } %call, 0
  store i8 %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw { i8, i64 }, ptr %coerce, i32 0, i32 1
  %11 = extractvalue { i8, i64 } %call, 1
  store i64 %11, ptr %10, align 8
  %b3 = getelementptr inbounds nuw %struct.S, ptr %coerce, i32 0, i32 1
  %12 = load i64, ptr %b3, align 8
  %cmp = icmp ne i64 %12, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %b4 = getelementptr inbounds nuw %struct.S, ptr %a, i32 0, i32 1
  store i64 -8, ptr %b4, align 8
  %b5 = getelementptr inbounds nuw %struct.S, ptr %b, i32 0, i32 1
  store i64 -2, ptr %b5, align 8
  %13 = getelementptr inbounds nuw { i8, i64 }, ptr %a, i32 0, i32 0
  %14 = load i8, ptr %13, align 8
  %15 = getelementptr inbounds nuw { i8, i64 }, ptr %a, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds nuw { i8, i64 }, ptr %b, i32 0, i32 0
  %18 = load i8, ptr %17, align 8
  %19 = getelementptr inbounds nuw { i8, i64 }, ptr %b, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %call6 = call { i8, i64 } @foo(i8 %14, i64 %16, i8 %18, i64 %20)
  %21 = getelementptr inbounds nuw { i8, i64 }, ptr %coerce7, i32 0, i32 0
  %22 = extractvalue { i8, i64 } %call6, 0
  store i8 %22, ptr %21, align 8
  %23 = getelementptr inbounds nuw { i8, i64 }, ptr %coerce7, i32 0, i32 1
  %24 = extractvalue { i8, i64 } %call6, 1
  store i64 %24, ptr %23, align 8
  %b8 = getelementptr inbounds nuw %struct.S, ptr %coerce7, i32 0, i32 1
  %25 = load i64, ptr %b8, align 8
  %cmp9 = icmp ne i64 %25, 4
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @abort() #3
  unreachable

if.end11:                                         ; preds = %if.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
