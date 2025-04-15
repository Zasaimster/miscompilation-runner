; 197688370011695891075915333760211007307
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/197688370011695891075915333760211007307_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/197688370011695891075915333760211007307.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@main.i = internal global %struct.s zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f(i64 %x.coerce) #0 {
entry:
  %retval = alloca %struct.s, align 8
  %x = alloca %struct.s, align 8
  %coerce.dive = getelementptr inbounds nuw %struct.s, ptr %x, i32 0, i32 0
  store i64 %x.coerce, ptr %coerce.dive, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %x, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds nuw %struct.s, ptr %retval, i32 0, i32 0
  %0 = load i64, ptr %coerce.dive1, align 8
  ret i64 %0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca %struct.s, align 8
  store i32 0, ptr %retval, align 4
  %bf.load = load i64, ptr @main.i, align 8
  %bf.clear = and i64 %bf.load, -256
  %bf.set = or i64 %bf.clear, 12
  store i64 %bf.set, ptr @main.i, align 8
  %0 = load i64, ptr @main.i, align 8
  %call = call i64 @f(i64 %0)
  %coerce.dive = getelementptr inbounds nuw %struct.s, ptr %tmp, i32 0, i32 0
  store i64 %call, ptr %coerce.dive, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @main.i, ptr align 8 %tmp, i64 8, i1 false)
  %bf.load1 = load i64, ptr @main.i, align 8
  %bf.clear2 = and i64 %bf.load1, 255
  %conv = trunc i64 %bf.clear2 to i32
  %cmp = icmp ne i32 %conv, 12
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bf.load4 = load i64, ptr @main.i, align 8
  %bf.lshr = lshr i64 %bf.load4, 8
  %bf.clear5 = and i64 %bf.lshr, 4294967295
  %conv6 = trunc i64 %bf.clear5 to i32
  %cmp7 = icmp ne i32 %conv6, -839970252
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
