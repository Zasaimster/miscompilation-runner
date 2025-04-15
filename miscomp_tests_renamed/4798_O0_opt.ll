; 195738817147096824648459812153344139045
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195738817147096824648459812153344139045_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195738817147096824648459812153344139045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 256, align 4
@p = dso_local global ptr @x, align 8
@p1 = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @broken_longjmp(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
entry:
  %buf = alloca [5 x ptr], align 16
  %q = alloca ptr, align 8
  %0 = load volatile ptr, ptr @p, align 8
  store volatile ptr %0, ptr %q, align 8
  %arraydecay = getelementptr inbounds [5 x ptr], ptr %buf, i64 0, i64 0
  %1 = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %1, ptr %arraydecay, align 16
  %2 = call ptr @llvm.stacksave.p0()
  %3 = getelementptr inbounds ptr, ptr %arraydecay, i64 2
  store ptr %2, ptr %3, align 16
  %4 = call i32 @llvm.eh.sjlj.setjmp(ptr %arraydecay)
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [5 x ptr], ptr %buf, i64 0, i64 0
  call void @broken_longjmp(ptr noundef %arraydecay1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load volatile ptr, ptr @p, align 8
  %6 = load volatile ptr, ptr %q, align 8
  %cmp = icmp ne ptr %5, %6
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @abort() #5
  unreachable

if.end3:                                          ; preds = %if.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
entry:
  %q = alloca ptr, align 8
  %0 = load volatile ptr, ptr @p, align 8
  store volatile ptr %0, ptr %q, align 8
  %1 = load volatile i32, ptr @x, align 4
  %conv = sext i32 %1 to i64
  %2 = alloca i8, i64 %conv, align 16
  store volatile ptr %2, ptr @p1, align 8
  call void @test()
  %3 = load volatile ptr, ptr @p, align 8
  %4 = load volatile ptr, ptr %q, align 8
  %cmp = icmp ne ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %q = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %0 = load volatile ptr, ptr @p, align 8
  store volatile ptr %0, ptr %q, align 8
  call void @test()
  call void @test2()
  %1 = load volatile ptr, ptr @p, align 8
  %2 = load volatile ptr, ptr %q, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
