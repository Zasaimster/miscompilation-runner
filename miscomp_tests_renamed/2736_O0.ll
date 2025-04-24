; 147682838974061499702362479301625322805
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/147682838974061499702362479301625322805.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/147682838974061499702362479301625322805.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstr = type { i32, i32, [0 x i8] }

@ao = dso_local constant %struct.pstr { i32 2, i32 2, [0 x i8] zeroinitializer }, align 4
@a = dso_local constant ptr @ao, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1() #0 {
entry:
  %0 = load i8, ptr getelementptr inbounds ([0 x i8], ptr getelementptr inbounds nuw (%struct.pstr, ptr @ao, i32 0, i32 2), i64 0, i64 2), align 2
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (%struct.pstr, ptr @ao, i32 0, i32 2), i64 2), align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
entry:
  %0 = load i8, ptr getelementptr inbounds ([0 x i8], ptr getelementptr inbounds nuw (%struct.pstr, ptr @ao, i32 0, i32 2), i64 0, i64 2), align 2
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 -1, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (%struct.pstr, ptr @ao, i32 0, i32 2), i64 2), align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3() #0 {
entry:
  %0 = load i8, ptr getelementptr inbounds ([0 x i8], ptr getelementptr inbounds nuw (%struct.pstr, ptr @ao, i32 0, i32 2), i64 0, i64 2), align 2
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, ptr getelementptr inbounds (i8, ptr getelementptr inbounds nuw (%struct.pstr, ptr @ao, i32 0, i32 2), i64 2), align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @test1()
  call void @test2()
  call void @test3()
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
