; 194093596229972980979876997377531949289
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/194093596229972980979876997377531949289.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/194093596229972980979876997377531949289.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.four_quarters = type { i16, i16, i16, i16 }

@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@x = dso_local global %struct.four_quarters zeroinitializer, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %j.coerce) #0 {
entry:
  %j = alloca %struct.four_quarters, align 2
  store i64 %j.coerce, ptr %j, align 2
  store i32 10, ptr @b, align 4
  %0 = load i32, ptr @a, align 4
  %1 = load i32, ptr @b, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, ptr @a, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.four_quarters, align 2
  store i32 0, ptr %retval, align 4
  %b2 = getelementptr inbounds nuw %struct.four_quarters, ptr %x, i32 0, i32 2
  store i16 0, ptr %b2, align 2
  %b1 = getelementptr inbounds nuw %struct.four_quarters, ptr %x, i32 0, i32 1
  store i16 0, ptr %b1, align 2
  %b0 = getelementptr inbounds nuw %struct.four_quarters, ptr %x, i32 0, i32 0
  store i16 0, ptr %b0, align 2
  %b3 = getelementptr inbounds nuw %struct.four_quarters, ptr %x, i32 0, i32 3
  store i16 38, ptr %b3, align 2
  %0 = load i64, ptr %x, align 2
  call void @f(i64 %0)
  %1 = load i32, ptr @a, align 4
  %cmp = icmp ne i32 %1, 38
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
