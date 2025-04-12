; 100195205890870436203638680187413945568
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100195205890870436203638680187413945568_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100195205890870436203638680187413945568.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [4 x i8], float }

@A = dso_local global [4 x i8] c"1234", align 1
@.str = private unnamed_addr constant [16 x i8] c"Value of a: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 %s.coerce0, float %s.coerce1) #0 {
entry:
  %s = alloca %struct.S, align 4
  %coerce = alloca { i64, float }, align 4
  %s.coerce = alloca { i64, float }, align 4
  %0 = getelementptr inbounds nuw { i64, float }, ptr %coerce, i32 0, i32 0
  store i64 %s.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, float }, ptr %coerce, i32 0, i32 1
  store float %s.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %s, ptr align 4 %coerce, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %s.coerce, ptr align 4 %s, i64 12, i1 false)
  %2 = getelementptr inbounds nuw { i64, float }, ptr %s.coerce, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds nuw { i64, float }, ptr %s.coerce, i32 0, i32 1
  %5 = load float, ptr %4, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 %3, float %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.S, align 4
  %s.coerce = alloca { i64, float }, align 4
  store i32 0, ptr %retval, align 4
  %arr = getelementptr inbounds nuw %struct.S, ptr %s, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i8], ptr %arr, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 @A, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %s.coerce, ptr align 4 %s, i64 12, i1 false)
  %0 = getelementptr inbounds nuw { i64, float }, ptr %s.coerce, i32 0, i32 0
  %1 = load i64, ptr %0, align 4
  %2 = getelementptr inbounds nuw { i64, float }, ptr %s.coerce, i32 0, i32 1
  %3 = load float, ptr %2, align 4
  call void @foo(i64 %1, float %3)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
