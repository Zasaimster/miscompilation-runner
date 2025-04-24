; 112111418484310631453054356451523702916
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/112111418484310631453054356451523702916.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/112111418484310631453054356451523702916.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_store_ccp(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr %a, ptr %p, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4
  %cmp1 = icmp sgt i32 %1, 8
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store ptr %b, ptr %p, align 8
  br label %if.end

if.else3:                                         ; preds = %if.else
  store ptr %c, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_store_copy_prop(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr %a, ptr %p, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4
  %cmp1 = icmp sgt i32 %1, 8
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store ptr %b, ptr %p, align 8
  br label %if.end

if.else3:                                         ; preds = %if.else
  store ptr %c, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %2 = load i32, ptr %i.addr, align 4
  %3 = load ptr, ptr %p, align 8
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %i.addr, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %b, align 4
  %5 = load ptr, ptr %p, align 8
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @test_store_ccp(i32 noundef 10)
  store i32 %call, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  %cmp = icmp eq i32 %0, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @test_store_copy_prop(i32 noundef 9)
  store i32 %call1, ptr %x, align 4
  %1 = load i32, ptr %x, align 4
  %cmp2 = icmp eq i32 %1, 9
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end4:                                          ; preds = %if.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
