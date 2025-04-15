; 153065816471049025108636859088017030738
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153065816471049025108636859088017030738.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153065816471049025108636859088017030738.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.R = type { %struct.A, %struct.A }
%struct.A = type { i64 }

@R = dso_local global %struct.R { %struct.A { i64 100 }, %struct.A zeroinitializer }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %r.coerce0, i64 %r.coerce1) #0 {
entry:
  %r = alloca %struct.R, align 8
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %r, i32 0, i32 0
  store i64 %r.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { i64, i64 }, ptr %r, i32 0, i32 1
  store i64 %r.coerce1, ptr %1, align 8
  %a = getelementptr inbounds nuw %struct.R, ptr %r, i32 0, i32 0
  %x = getelementptr inbounds nuw %struct.A, ptr %a, i32 0, i32 0
  %2 = load i64, ptr %x, align 8
  %3 = load i64, ptr @R, align 8
  %cmp = icmp ne i64 %2, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds nuw %struct.R, ptr %r, i32 0, i32 1
  %x1 = getelementptr inbounds nuw %struct.A, ptr %b, i32 0, i32 0
  %4 = load i64, ptr %x1, align 8
  %5 = load i64, ptr getelementptr inbounds nuw (%struct.R, ptr @R, i32 0, i32 1), align 8
  %cmp2 = icmp ne i64 %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @g() #0 {
entry:
  %retval = alloca %struct.R, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 @R, i64 16, i1 false)
  %0 = load { i64, i64 }, ptr %retval, align 8
  ret { i64, i64 } %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca %struct.R, align 8
  %tmp = alloca %struct.R, align 8
  store i32 0, ptr %retval, align 4
  %0 = load i64, ptr @R, align 8
  %1 = load i64, ptr getelementptr inbounds nuw ({ i64, i64 }, ptr @R, i32 0, i32 1), align 8
  call void @f(i64 %0, i64 %1)
  %call = call { i64, i64 } @g()
  %2 = getelementptr inbounds nuw { i64, i64 }, ptr %tmp, i32 0, i32 0
  %3 = extractvalue { i64, i64 } %call, 0
  store i64 %3, ptr %2, align 8
  %4 = getelementptr inbounds nuw { i64, i64 }, ptr %tmp, i32 0, i32 1
  %5 = extractvalue { i64, i64 } %call, 1
  store i64 %5, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %tmp, i64 16, i1 false)
  %a = getelementptr inbounds nuw %struct.R, ptr %r, i32 0, i32 0
  %x = getelementptr inbounds nuw %struct.A, ptr %a, i32 0, i32 0
  %6 = load i64, ptr %x, align 8
  %7 = load i64, ptr @R, align 8
  %cmp = icmp ne i64 %6, %7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds nuw %struct.R, ptr %r, i32 0, i32 1
  %x1 = getelementptr inbounds nuw %struct.A, ptr %b, i32 0, i32 0
  %8 = load i64, ptr %x1, align 8
  %9 = load i64, ptr getelementptr inbounds nuw (%struct.R, ptr @R, i32 0, i32 1), align 8
  %cmp2 = icmp ne i64 %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
