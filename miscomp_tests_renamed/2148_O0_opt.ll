; 137850188957138687224278699668888297287
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137850188957138687224278699668888297287_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137850188957138687224278699668888297287.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i8, [32 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @z() #0 {
entry:
  %xxx = alloca %struct.X, align 1
  %x = getelementptr inbounds nuw %struct.X, ptr %xxx, i32 0, i32 1
  %arrayidx = getelementptr inbounds [32 x i8], ptr %x, i64 0, i64 31
  store i8 48, ptr %arrayidx, align 1
  %x1 = getelementptr inbounds nuw %struct.X, ptr %xxx, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [32 x i8], ptr %x1, i64 0, i64 0
  store i8 48, ptr %arrayidx2, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @z()
  store i32 %call, ptr %val, align 4
  %0 = load i32, ptr %val, align 4
  %cmp = icmp ne i32 %0, 96
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef byval(%struct.X) align 8 %x, ptr noundef byval(%struct.X) align 8 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %y1 = getelementptr inbounds nuw %struct.X, ptr %x, i32 0, i32 0
  %0 = load i8, ptr %y1, align 8
  %conv = sext i8 %0 to i32
  %y2 = getelementptr inbounds nuw %struct.X, ptr %y, i32 0, i32 0
  %1 = load i8, ptr %y2, align 8
  %conv3 = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 70, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %x5 = getelementptr inbounds nuw %struct.X, ptr %x, i32 0, i32 1
  %arrayidx = getelementptr inbounds [32 x i8], ptr %x5, i64 0, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv6 = sext i8 %2 to i32
  %x7 = getelementptr inbounds nuw %struct.X, ptr %y, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [32 x i8], ptr %x7, i64 0, i64 0
  %3 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %3 to i32
  %add = add nsw i32 %conv6, %conv9
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

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
