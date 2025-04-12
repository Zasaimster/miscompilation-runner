; 169251548503306961572739525157761730068
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169251548503306961572739525157761730068_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169251548503306961572739525157761730068.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @gcc_crash(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds nuw %struct.foo, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %a, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %a, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.trap()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %top

top:                                              ; preds = %if.then4, %if.end
  %2 = load ptr, ptr %p.addr, align 8
  %a1 = getelementptr inbounds nuw %struct.foo, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %a1, align 4
  %inc2 = add nsw i32 %3, 1
  store i32 %inc2, ptr %a1, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %a3 = getelementptr inbounds nuw %struct.foo, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %a3, align 4
  %cmp = icmp sge i32 %5, 62
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %top
  br label %top

if.end5:                                          ; preds = %top
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.foo, align 4
  store i32 0, ptr %retval, align 4
  %a = getelementptr inbounds nuw %struct.foo, ptr %x, i32 0, i32 0
  store i32 53, ptr %a, align 4
  call void @gcc_crash(ptr noundef %x)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
