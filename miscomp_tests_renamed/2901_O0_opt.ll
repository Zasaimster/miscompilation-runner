; 119640692155135662456085708807940836720
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119640692155135662456085708807940836720_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119640692155135662456085708807940836720.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i8 @f(i8 %s1.coerce) #0 {
entry:
  %retval = alloca %struct.T, align 1
  %s1 = alloca %struct.T, align 1
  %coerce.dive = getelementptr inbounds nuw %struct.T, ptr %s1, i32 0, i32 0
  store i8 %s1.coerce, ptr %coerce.dive, align 1
  %x = getelementptr inbounds nuw %struct.T, ptr %retval, i32 0, i32 0
  store i8 20, ptr %x, align 1
  %coerce.dive1 = getelementptr inbounds nuw %struct.T, ptr %retval, i32 0, i32 0
  %0 = load i8, ptr %coerce.dive1, align 1
  ret i8 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s1a = alloca %struct.T, align 1
  %s1b = alloca %struct.T, align 1
  %tmp = alloca %struct.T, align 1
  store i32 0, ptr %retval, align 4
  %x = getelementptr inbounds nuw %struct.T, ptr %s1a, i32 0, i32 0
  store i8 13, ptr %x, align 1
  %coerce.dive = getelementptr inbounds nuw %struct.T, ptr %s1a, i32 0, i32 0
  %0 = load i8, ptr %coerce.dive, align 1
  %call = call i8 @f(i8 %0)
  %coerce.dive1 = getelementptr inbounds nuw %struct.T, ptr %tmp, i32 0, i32 0
  store i8 %call, ptr %coerce.dive1, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s1b, ptr align 1 %tmp, i64 1, i1 false)
  %x2 = getelementptr inbounds nuw %struct.T, ptr %s1a, i32 0, i32 0
  %1 = load i8, ptr %x2, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 13
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %x4 = getelementptr inbounds nuw %struct.T, ptr %s1b, i32 0, i32 0
  %2 = load i8, ptr %x4, align 1
  %conv5 = sext i8 %2 to i32
  %cmp6 = icmp ne i32 %conv5, 17
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
