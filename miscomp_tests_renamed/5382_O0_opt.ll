; 19518789551687678717776442942865035847
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19518789551687678717776442942865035847_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19518789551687678717776442942865035847.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Positive\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(ptr noundef %k, i32 noundef %k2, i32 noundef %f, i32 noundef %f2) #0 {
entry:
  %retval = alloca i32, align 4
  %k.addr = alloca ptr, align 8
  %k2.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %f2.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  store i32 %k2, ptr %k2.addr, align 4
  store i32 %f, ptr %f.addr, align 4
  store i32 %f2, ptr %f2.addr, align 4
  %0 = load i32, ptr %f.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %p, align 8
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %res, align 4
  %3 = load ptr, ptr %k.addr, align 8
  %i = getelementptr inbounds nuw %struct.foo, ptr %3, i32 0, i32 0
  store i32 1, ptr %i, align 4
  %4 = load i32, ptr %f2.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %p, align 8
  store ptr %5, ptr %q, align 8
  br label %if.end3

if.else2:                                         ; preds = %if.end
  store ptr %k2.addr, ptr %q, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.else2, %if.then1
  %6 = load i32, ptr %res, align 4
  %7 = load ptr, ptr %q, align 8
  %8 = load i32, ptr %7, align 4
  %add = add nsw i32 %6, %8
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.else
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca %struct.foo, align 4
  store i32 0, ptr %retval, align 4
  %i = getelementptr inbounds nuw %struct.foo, ptr %k, i32 0, i32 0
  store i32 0, ptr %i, align 4
  %j = getelementptr inbounds nuw %struct.foo, ptr %k, i32 0, i32 1
  store i32 1, ptr %j, align 4
  %call = call i32 @bar(ptr noundef %k, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %cmp = icmp ne i32 %call, 1
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
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
