; 166792763576343385034524276927716503638
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/166792763576343385034524276927716503638_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/166792763576343385034524276927716503638.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { ptr, float }
%struct.A = type { i32, i32 }

@X = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr %b.coerce0, float %b.coerce1, ptr noundef %q, ptr noundef %h) #0 {
entry:
  %b = alloca %struct.B, align 8
  %q.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %0 = getelementptr inbounds nuw { ptr, float }, ptr %b, i32 0, i32 0
  store ptr %b.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { ptr, float }, ptr %b, i32 0, i32 1
  store float %b.coerce1, ptr %1, align 8
  store ptr %q, ptr %q.addr, align 8
  store ptr %h, ptr %h.addr, align 8
  %p = getelementptr inbounds nuw %struct.B, ptr %b, i32 0, i32 0
  %2 = load ptr, ptr %p, align 8
  %3 = load i32, ptr %2, align 4
  %conv = sitofp i32 %3 to float
  %4 = load float, ptr @X, align 4
  %add = fadd float %4, %conv
  store float %add, ptr @X, align 4
  %p1 = getelementptr inbounds nuw %struct.B, ptr %b, i32 0, i32 0
  %5 = load ptr, ptr %p1, align 8
  store i32 3, ptr %5, align 4
  %6 = load ptr, ptr %q.addr, align 8
  %t = getelementptr inbounds nuw %struct.A, ptr %6, i32 0, i32 0
  store i32 2, ptr %t, align 4
  %p2 = getelementptr inbounds nuw %struct.B, ptr %b, i32 0, i32 0
  %7 = load ptr, ptr %p2, align 8
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.A, align 4
  %b = alloca %struct.B, align 8
  store i32 0, ptr %retval, align 4
  %t = getelementptr inbounds nuw %struct.A, ptr %a, i32 0, i32 0
  %p = getelementptr inbounds nuw %struct.B, ptr %b, i32 0, i32 0
  store ptr %t, ptr %p, align 8
  %0 = getelementptr inbounds nuw { ptr, float }, ptr %b, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds nuw { ptr, float }, ptr %b, i32 0, i32 1
  %3 = load float, ptr %2, align 8
  %call = call i32 @foo(ptr %1, float %3, ptr noundef %a, ptr noundef @X)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
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
