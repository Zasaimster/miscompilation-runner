; 167710366452373177289251415274184912387
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167710366452373177289251415274184912387.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167710366452373177289251415274184912387.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"This will never be printed.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %A = alloca [30 x i8], align 16
  %B = alloca [30 x i8], align 16
  %C = alloca [30 x i8], align 16
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %arraydecay = getelementptr inbounds [30 x i8], ptr %B, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 1, i64 30, i1 false)
  store i32 20, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [30 x i8], ptr %A, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [30 x i8], ptr %B, i64 0, i64 %idxprom1
  store i8 0, ptr %arrayidx2, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [30 x i8], ptr %C, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay3, i8 1, i64 30, i1 false)
  %arraydecay4 = getelementptr inbounds [30 x i8], ptr %C, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay4, i64 10
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 10, i1 false)
  %arraydecay5 = getelementptr inbounds [30 x i8], ptr %A, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [30 x i8], ptr %C, i64 0, i64 0
  %call7 = call i32 @memcmp(ptr noundef %arraydecay5, ptr noundef %arraydecay6, i64 noundef 30)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %arraydecay8 = getelementptr inbounds [30 x i8], ptr %B, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [30 x i8], ptr %C, i64 0, i64 0
  %call10 = call i32 @memcmp(ptr noundef %arraydecay8, ptr noundef %arraydecay9, i64 noundef 30)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
