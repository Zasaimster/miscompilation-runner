; 176723951537146122221665636030884258771
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/176723951537146122221665636030884258771_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/176723951537146122221665636030884258771.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i0 = dso_local global [0 x i32] zeroinitializer, align 4
@i1 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @vararg(i32 noundef %i, ...) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
entry:
  %a = alloca i32, align 4
  %0 = call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %a, align 4
  %2 = load i32, ptr %a, align 4
  call void (i32, ...) @vararg(i32 noundef 0, i32 noundef %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr @i0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr @i1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4() #0 {
entry:
  %a = alloca i64, align 8
  %0 = call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i64
  store volatile i64 %1, ptr %a, align 8
  %2 = load volatile i64, ptr %a, align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, ptr @i0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
