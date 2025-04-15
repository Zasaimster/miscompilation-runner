; 154532907046064969960624300655530366037
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154532907046064969960624300655530366037_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154532907046064969960624300655530366037.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.three_byte_t = type <{ i8, i16 }>

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @f() #0 {
entry:
  ret i8 3
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @g() #0 {
entry:
  ret i16 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %three_byte = alloca %struct.three_byte_t, align 1
  store i32 0, ptr %retval, align 4
  %call = call zeroext i8 @f()
  %a = getelementptr inbounds nuw %struct.three_byte_t, ptr %three_byte, i32 0, i32 0
  store i8 %call, ptr %a, align 1
  %call1 = call zeroext i16 @g()
  %b = getelementptr inbounds nuw %struct.three_byte_t, ptr %three_byte, i32 0, i32 1
  store i16 %call1, ptr %b, align 1
  %a2 = getelementptr inbounds nuw %struct.three_byte_t, ptr %three_byte, i32 0, i32 0
  %0 = load i8, ptr %a2, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 171
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %b4 = getelementptr inbounds nuw %struct.three_byte_t, ptr %three_byte, i32 0, i32 1
  %1 = load i16, ptr %b4, align 1
  %conv5 = zext i16 %1 to i32
  %cmp6 = icmp ne i32 %conv5, 4660
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
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
