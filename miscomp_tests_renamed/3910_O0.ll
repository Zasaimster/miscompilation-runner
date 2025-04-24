; 168341499003793576259254336875363771461
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168341499003793576259254336875363771461.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168341499003793576259254336875363771461.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, ptr }

@.str = private unnamed_addr constant [10 x i8] c"hey there\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca ptr, align 8
  %.compoundliteral = alloca %struct.s, align 8
  store i32 0, ptr %retval, align 4
  store i32 5, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  br i1 true, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %value = getelementptr inbounds nuw %struct.s, ptr %.compoundliteral, i32 0, i32 0
  store i32 3, ptr %value, align 8
  %0 = getelementptr i8, ptr %.compoundliteral, i64 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 4, i1 false)
  %string = getelementptr inbounds nuw %struct.s, ptr %.compoundliteral, i32 0, i32 1
  store ptr @.str, ptr %string, align 8
  store ptr %.compoundliteral, ptr %t, align 8
  %1 = load ptr, ptr %t, align 8
  %value1 = getelementptr inbounds nuw %struct.s, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %value1, align 8
  %cmp = icmp ne i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %for.body
  %3 = load ptr, ptr %t, align 8
  %value2 = getelementptr inbounds nuw %struct.s, ptr %3, i32 0, i32 0
  store i32 4, ptr %value2, align 8
  %4 = load ptr, ptr %t, align 8
  %value3 = getelementptr inbounds nuw %struct.s, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %value3, align 8
  %cmp4 = icmp ne i32 %5, 4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end6:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
