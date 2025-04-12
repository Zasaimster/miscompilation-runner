; 118343246438784188512352030692285025017
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/118343246438784188512352030692285025017_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/118343246438784188512352030692285025017.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sub(i32 noundef %i, ptr noundef %array) #0 {
entry:
  %i.addr = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %array, ptr %array.addr, align 8
  %0 = load i32, ptr %i.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i.addr, align 4
  %1 = load i32, ptr %i.addr, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [10 x i32], align 16
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 0
  %call = call i32 @sub(i32 noundef 10, ptr noundef %arraydecay)
  %cmp = icmp ne i32 %call, 11
  %conv = zext i1 %cmp to i32
  call void @exit(i32 noundef %conv) #2
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
