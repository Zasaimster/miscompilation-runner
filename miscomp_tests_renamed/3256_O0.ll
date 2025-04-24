; 156976071404270795835326318526542781161
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/156976071404270795835326318526542781161.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/156976071404270795835326318526542781161.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i32, i32, i32, i16 }

@a = dso_local global i16 1, align 2
@b = dso_local global { i32, i32, i32, i16, [2 x i8] } { i32 1, i32 0, i32 0, i16 0, [2 x i8] zeroinitializer }, align 4
@c = dso_local global %struct.S0 zeroinitializer, align 4
@d = dso_local global %struct.S0 zeroinitializer, align 4
@e = dso_local global %struct.S0 zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @fn1() #0 {
entry:
  %retval = alloca %struct.S0, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 4 @c, i64 16, i1 false)
  %0 = load { i64, i64 }, ptr %retval, align 4
  ret { i64, i64 } %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn2() #0 {
entry:
  %tmp = alloca %struct.S0, align 4
  %call = call { i64, i64 } @fn1()
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %tmp, i32 0, i32 0
  %1 = extractvalue { i64, i64 } %call, 0
  store i64 %1, ptr %0, align 4
  %2 = getelementptr inbounds nuw { i64, i64 }, ptr %tmp, i32 0, i32 1
  %3 = extractvalue { i64, i64 } %call, 1
  store i64 %3, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @b, ptr align 4 %tmp, i64 16, i1 false)
  store i16 0, ptr @a, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @d, ptr align 4 @e, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @fn2()
  %0 = load i16, ptr @a, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
