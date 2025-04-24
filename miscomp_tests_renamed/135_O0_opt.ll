; 102230607576313215955780733588386127213
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/102230607576313215955780733588386127213_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/102230607576313215955780733588386127213.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type <{ i8, { float, float } }>

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1() #0 {
entry:
  %s = alloca %struct.x, align 1
  %f = getelementptr inbounds nuw %struct.x, ptr %s, i32 0, i32 1
  %f.realp = getelementptr inbounds nuw { float, float }, ptr %f, i32 0, i32 0
  %f.imagp = getelementptr inbounds nuw { float, float }, ptr %f, i32 0, i32 1
  store float 1.000000e+00, ptr %f.realp, align 1
  store float 0.000000e+00, ptr %f.imagp, align 1
  %c = getelementptr inbounds nuw %struct.x, ptr %s, i32 0, i32 0
  store i8 42, ptr %c, align 1
  call void @f2(ptr noundef %s)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(ptr noundef %y) #0 {
entry:
  %y.addr = alloca ptr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %y.addr, align 8
  %f = getelementptr inbounds nuw %struct.x, ptr %0, i32 0, i32 1
  %f.realp = getelementptr inbounds nuw { float, float }, ptr %f, i32 0, i32 0
  %f.real = load float, ptr %f.realp, align 1
  %f.imagp = getelementptr inbounds nuw { float, float }, ptr %f, i32 0, i32 1
  %f.imag = load float, ptr %f.imagp, align 1
  %cmp.r = fcmp une float %f.real, 1.000000e+00
  %cmp.i = fcmp une float %f.imag, 0.000000e+00
  %or.ri = or i1 %cmp.r, %cmp.i
  br i1 %or.ri, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %y.addr, align 8
  %c = getelementptr inbounds nuw %struct.x, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %c, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
