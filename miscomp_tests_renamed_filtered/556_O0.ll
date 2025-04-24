; 109940322866188210080839345446815111415
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/109940322866188210080839345446815111415.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/109940322866188210080839345446815111415.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %p, ptr noundef %q) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  %0 = load ptr, ptr %q.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %q.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %incdec.ptr1 = getelementptr inbounds nuw ptr, ptr %2, i32 1
  store ptr %incdec.ptr1, ptr %p.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %incdec.ptr2 = getelementptr inbounds nuw i32, ptr %3, i32 1
  store ptr %incdec.ptr2, ptr %2, align 8
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(ptr noundef %p, ptr noundef %q) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  %0 = load ptr, ptr %q.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %q.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store i32 %1, ptr %3, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %incdec.ptr1 = getelementptr inbounds nuw ptr, ptr %4, i32 1
  store ptr %incdec.ptr1, ptr %p.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %incdec.ptr2 = getelementptr inbounds nuw i32, ptr %5, i32 1
  store ptr %incdec.ptr2, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(ptr noundef %p, ptr noundef %q) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  %0 = load ptr, ptr %q.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %q.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store i32 %1, ptr %3, align 4
  %call = call i32 (...) @testFunction()
  ret void
}

declare i32 @testFunction(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 42, ptr %i, align 4
  store i32 0, ptr %j, align 4
  store ptr %i, ptr %p, align 8
  call void @foo(ptr noundef %p, ptr noundef %j)
  %0 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 -1
  %cmp = icmp ne ptr %add.ptr, %i
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %j, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %i, align 4
  %cmp3 = icmp ne i32 %2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  store i32 43, ptr %i, align 4
  store ptr %i, ptr %p, align 8
  call void @bar(ptr noundef %p, ptr noundef %j)
  %3 = load ptr, ptr %p, align 8
  %add.ptr4 = getelementptr inbounds i32, ptr %3, i64 -1
  %cmp5 = icmp ne ptr %add.ptr4, %i
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %4 = load i32, ptr %j, align 4
  %cmp7 = icmp ne i32 %4, 0
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, ptr %i, align 4
  %cmp9 = icmp ne i32 %5, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false8, %lor.lhs.false6, %if.end
  call void @abort() #3
  unreachable

if.end11:                                         ; preds = %lor.lhs.false8
  store i32 44, ptr %i, align 4
  store ptr %i, ptr %p, align 8
  call void @baz(ptr noundef %p, ptr noundef %j)
  %6 = load ptr, ptr %p, align 8
  %add.ptr12 = getelementptr inbounds i32, ptr %6, i64 -1
  %cmp13 = icmp ne ptr %add.ptr12, %i
  br i1 %cmp13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end11
  %7 = load i32, ptr %j, align 4
  %cmp15 = icmp ne i32 %7, 0
  br i1 %cmp15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %8 = load i32, ptr %i, align 4
  %cmp17 = icmp ne i32 %8, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false16, %lor.lhs.false14, %if.end11
  call void @abort() #3
  unreachable

if.end19:                                         ; preds = %lor.lhs.false16
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
