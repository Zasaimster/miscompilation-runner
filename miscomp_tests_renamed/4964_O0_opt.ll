; 141785320616043061312815781444817029046
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/141785320616043061312815781444817029046_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/141785320616043061312815781444817029046.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { ptr, i32 }
%struct.A = type { i32, i32 }

@b = dso_local global i32 10, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global [0 x %struct.B] zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@a = dso_local global ptr null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %x, ptr noundef %y, i32 noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %z.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store i32 %z, ptr %z.addr, align 4
  %0 = load ptr, ptr %y.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 4
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %2 = load i32, ptr %z.addr, align 4
  %mul = mul nsw i32 %2, 25
  %add = add nsw i32 %conv, %mul
  store i32 %add, ptr @c, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @bar(ptr noundef %v, i32 noundef %w, i32 noundef %x, ptr noundef %y, i32 noundef %z) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %z.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %z, ptr %z.addr, align 4
  %0 = load i32, ptr %w.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr @d, align 8
  %1 = load i32, ptr getelementptr inbounds nuw (%struct.B, ptr @d, i32 0, i32 1), align 8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  call void @foo(ptr noundef %2, ptr noundef @.str, i32 noundef 200)
  %3 = load ptr, ptr %x.addr, align 8
  %4 = load i32, ptr @b, align 4
  %tobool = icmp ne i32 %4, 0
  %cond = select i1 %tobool, i32 0, i32 65536
  %5 = load ptr, ptr %x.addr, align 8
  %call = call i64 @strlen(ptr noundef %5) #6
  %conv = trunc i64 %call to i32
  %call1 = call ptr @bar(ptr noundef %3, i32 noundef %cond, i32 noundef %conv, ptr noundef @.str, i32 noundef 201)
  %6 = load ptr, ptr @d, align 8
  %7 = load i32, ptr getelementptr inbounds nuw (%struct.B, ptr @d, i32 0, i32 1), align 8
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 %idxprom2
  store ptr %call1, ptr %arrayidx3, align 8
  %8 = load ptr, ptr @d, align 8
  %9 = load i32, ptr getelementptr inbounds nuw (%struct.B, ptr @d, i32 0, i32 1), align 8
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 %idxprom4
  %10 = load ptr, ptr %arrayidx5, align 8
  %a = getelementptr inbounds nuw %struct.A, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %a, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %a, align 4
  %12 = load ptr, ptr %y.addr, align 8
  %tobool6 = icmp ne ptr %12, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %y.addr, align 8
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr @d, align 8
  %16 = load i32, ptr getelementptr inbounds nuw (%struct.B, ptr @d, i32 0, i32 1), align 8
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %15, i64 %idxprom7
  %17 = load ptr, ptr %arrayidx8, align 8
  %b = getelementptr inbounds nuw %struct.A, ptr %17, i32 0, i32 1
  store i32 %14, ptr %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  store i32 0, ptr getelementptr inbounds nuw (%struct.B, ptr @d, i32 0, i32 1), align 8
  store ptr @a, ptr @d, align 8
  call void @test(ptr noundef @.str.1, ptr noundef null)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
