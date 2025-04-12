; 134262422551159748448211180310555950196
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/134262422551159748448211180310555950196_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/134262422551159748448211180310555950196.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bug(ptr noundef %Cref, i8 noundef signext %transb, i32 noundef %m, i32 noundef %n, i32 noundef %k, double noundef %a, ptr noundef %A, i32 noundef %fdA, ptr noundef %B, i32 noundef %fdB, double noundef %b, ptr noundef %C, i32 noundef %fdC) #0 {
entry:
  %Cref.addr = alloca ptr, align 8
  %transb.addr = alloca i8, align 1
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %a.addr = alloca double, align 8
  %A.addr = alloca ptr, align 8
  %fdA.addr = alloca i32, align 4
  %B.addr = alloca ptr, align 8
  %fdB.addr = alloca i32, align 4
  %b.addr = alloca double, align 8
  %C.addr = alloca ptr, align 8
  %fdC.addr = alloca i32, align 4
  store ptr %Cref, ptr %Cref.addr, align 8
  store i8 %transb, ptr %transb.addr, align 1
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  store double %a, ptr %a.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store i32 %fdA, ptr %fdA.addr, align 4
  store ptr %B, ptr %B.addr, align 8
  store i32 %fdB, ptr %fdB.addr, align 4
  store double %b, ptr %b.addr, align 8
  store ptr %C, ptr %C.addr, align 8
  store i32 %fdC, ptr %fdC.addr, align 4
  %0 = load ptr, ptr %Cref.addr, align 8
  %cmp = icmp ne ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %A = alloca [1 x double], align 8
  %B = alloca [1 x double], align 8
  %C = alloca [1 x double], align 8
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [1 x double], ptr %C, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [1 x double], ptr %A, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [1 x double], ptr %B, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [1 x double], ptr %C, i64 0, i64 0
  call void @bug(ptr noundef %arraydecay, i8 noundef signext 66, i32 noundef 1, i32 noundef 2, i32 noundef 3, double noundef 4.000000e+00, ptr noundef %arraydecay1, i32 noundef 5, ptr noundef %arraydecay2, i32 noundef 6, double noundef 7.000000e+00, ptr noundef %arraydecay3, i32 noundef 8)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
