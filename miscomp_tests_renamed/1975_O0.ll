; 135044278583078605102805857825874961963
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/135044278583078605102805857825874961963.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/135044278583078605102805857825874961963.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.buf = private unnamed_addr constant [16 x i8] c"1234567890\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"I'm not used\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %buf, ptr align 16 @__const.main.buf, i64 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %call = call i64 @strlen(ptr noundef %arraydecay1) #5
  %conv = trunc i64 %call to i8
  %0 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i8 %conv, ptr %0, align 1
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %1 = load i8, ptr %arrayidx, align 16
  %conv2 = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv2, 10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp5 = icmp ne i64 %sub.ptr.sub, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @notUsed() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
