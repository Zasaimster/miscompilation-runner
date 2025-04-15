; 104009055337710011025898303224359233164
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/104009055337710011025898303224359233164.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/104009055337710011025898303224359233164.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"aab\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %out = alloca [4 x i8], align 1
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [4 x i8], ptr %out, i64 0, i64 0
  %call = call ptr @test(ptr noundef @.str, ptr noundef %arraydecay)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @test(ptr noundef %in, ptr noundef %out) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end18
  %0 = load ptr, ptr %in.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 97
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %while.body
  %2 = load ptr, ptr %in.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %add.ptr, ptr %p, align 8
  br label %while.cond2

while.cond2:                                      ; preds = %while.body6, %if.then
  %3 = load ptr, ptr %p, align 8
  %4 = load i8, ptr %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 120
  br i1 %cmp4, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond2
  %5 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond2, !llvm.loop !6

while.end:                                        ; preds = %while.cond2
  %6 = load ptr, ptr %p, align 8
  %7 = load i8, ptr %6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 98
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %while.end
  %8 = load ptr, ptr %p, align 8
  ret ptr %8

if.end:                                           ; preds = %while.end
  br label %while.cond11

while.cond11:                                     ; preds = %while.body14, %if.end
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load ptr, ptr %p, align 8
  %cmp12 = icmp ult ptr %9, %10
  br i1 %cmp12, label %while.body14, label %while.end17

while.body14:                                     ; preds = %while.cond11
  %11 = load ptr, ptr %in.addr, align 8
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr15, ptr %in.addr, align 8
  %12 = load i8, ptr %11, align 1
  %13 = load ptr, ptr %out.addr, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr16, ptr %out.addr, align 8
  store i8 %12, ptr %13, align 1
  br label %while.cond11, !llvm.loop !8

while.end17:                                      ; preds = %while.cond11
  br label %if.end18

if.end18:                                         ; preds = %while.end17, %while.body
  br label %while.body
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !7}
