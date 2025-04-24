; 169628661054307341065521616879195783361
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169628661054307341065521616879195783361.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169628661054307341065521616879195783361.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  store i32 %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.s, align 8
  %sh = alloca [10 x i16], align 16
  %c = alloca [10 x i8], align 1
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %a = getelementptr inbounds nuw %struct.s, ptr %s, i32 0, i32 0
  store i64 1, ptr %a, align 8
  %b = getelementptr inbounds nuw %struct.s, ptr %s, i32 0, i32 1
  store i32 2, ptr %b, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = trunc i32 %1 to i16
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i16], ptr %sh, i64 0, i64 %idxprom
  store i16 %conv, ptr %arrayidx, align 2
  %3 = load i32, ptr %i, align 4
  %conv1 = trunc i32 %3 to i8
  %4 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [10 x i8], ptr %c, i64 0, i64 %idxprom2
  store i8 %conv1, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call = call i32 @foo(i32 noundef 0, ptr noundef %s)
  %cmp4 = icmp ne i32 %call, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.end
  %arraydecay = getelementptr inbounds [10 x i8], ptr %c, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 3
  %call6 = call i32 @foo(i32 noundef 1, ptr noundef %add.ptr)
  %cmp7 = icmp ne i32 %call6, 3
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end10:                                         ; preds = %if.end
  %arraydecay11 = getelementptr inbounds [10 x i16], ptr %sh, i64 0, i64 0
  %add.ptr12 = getelementptr inbounds i16, ptr %arraydecay11, i64 3
  %call13 = call i32 @foo(i32 noundef 2, ptr noundef %add.ptr12)
  %cmp14 = icmp ne i32 %call13, 3
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  call void @abort() #3
  unreachable

if.end17:                                         ; preds = %if.end10
  call void @exit(i32 noundef 0) #4
  unreachable
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
