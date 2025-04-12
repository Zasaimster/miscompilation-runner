; 181401060803537678360480585024291734297
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/181401060803537678360480585024291734297.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/181401060803537678360480585024291734297.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { i32, [5 x ptr] }

@s1 = dso_local global %struct.tag zeroinitializer, align 8
@p1 = dso_local global ptr null, align 8
@i = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -1, ptr @s1, align 8
  store ptr @s1, ptr @p1, align 8
  store ptr inttoptr (i64 30 to ptr), ptr @p1, align 8
  store i32 3, ptr @i, align 4
  store ptr @.str, ptr getelementptr inbounds ([5 x ptr], ptr getelementptr inbounds nuw (%struct.tag, ptr @s1, i32 0, i32 1), i64 0, i64 3), align 8
  %0 = load ptr, ptr @p1, align 8
  %m2 = getelementptr inbounds nuw %struct.tag, ptr %0, i32 0, i32 1
  %1 = load i32, ptr @i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %m2, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %arrayidx, align 8
  %call = call i64 @strlen(ptr noundef %2) #4
  %cmp = icmp eq i64 %call, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @foo(ptr noundef @.str.1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %if.then
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @func1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
