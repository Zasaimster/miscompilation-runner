; 116944897905417135031148094247540489351
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116944897905417135031148094247540489351.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116944897905417135031148094247540489351.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %sp) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  %0 = load ptr, ptr %sp.addr, align 8
  %add.ptr = getelementptr inbounds %struct.s, ptr %0, i64 -1
  %tobool = icmp ne ptr %add.ptr, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %sp.addr, align 8
  %a = getelementptr inbounds nuw %struct.s, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %a, align 8
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %sp.addr, align 8
  %b = getelementptr inbounds nuw %struct.s, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %b, align 4
  %cmp1 = icmp eq i32 %4, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.s, align 8
  store i32 0, ptr %retval, align 4
  %b = getelementptr inbounds nuw %struct.s, ptr %x, i32 0, i32 1
  store i32 -1, ptr %b, align 4
  %a = getelementptr inbounds nuw %struct.s, ptr %x, i32 0, i32 0
  store i32 -1, ptr %a, align 8
  %call = call i32 @f(ptr noundef %x)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
