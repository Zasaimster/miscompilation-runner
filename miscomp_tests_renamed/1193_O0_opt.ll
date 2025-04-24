; 121390647001454872601266435897866049021
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121390647001454872601266435897866049021_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121390647001454872601266435897866049021.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check2.r = internal global i64 5, align 8
@.str = private unnamed_addr constant [10 x i8] c"foobarbaz\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"az\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"baz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test1(ptr noundef %s, i64 noundef %i) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  store i64 %i, ptr %i.addr, align 8
  %0 = load i64, ptr %i.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @check2() #0 {
entry:
  %0 = load i64, ptr @check2.r, align 8
  %cmp = icmp ne i64 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr @check2.r, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr @check2.r, align 8
  ret i64 %inc
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @check2()
  %add.ptr = getelementptr inbounds nuw i8, ptr @.str, i64 %call
  %call1 = call ptr @strcpy(ptr noundef %0, ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [10 x i8], align 1
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [10 x i8], ptr %buf, i64 0, i64 0
  %call = call i64 @test1(ptr noundef %arraydecay, i64 noundef 7)
  %cmp = icmp ne i64 %call, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay1 = getelementptr inbounds [10 x i8], ptr %buf, i64 0, i64 0
  %call2 = call i32 @memcmp(ptr noundef %arraydecay1, ptr noundef @.str.1, i64 noundef 3)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay3 = getelementptr inbounds [10 x i8], ptr %buf, i64 0, i64 0
  call void @test2(ptr noundef %arraydecay3)
  %arraydecay4 = getelementptr inbounds [10 x i8], ptr %buf, i64 0, i64 0
  %call5 = call i32 @memcmp(ptr noundef %arraydecay4, ptr noundef @.str.2, i64 noundef 4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @abort() #5
  unreachable

if.end8:                                          ; preds = %if.end
  call void @exit(i32 noundef 0) #7
  unreachable
}

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
