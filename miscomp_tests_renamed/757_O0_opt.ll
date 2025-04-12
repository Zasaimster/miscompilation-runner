; 127949968918241939808552206226881959259
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127949968918241939808552206226881959259_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127949968918241939808552206226881959259.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
entry:
  %s = alloca %struct.anon, align 4
  %sp = alloca ptr, align 8
  %ip = alloca ptr, align 8
  %i = getelementptr inbounds nuw %struct.anon, ptr %s, i32 0, i32 0
  store ptr %i, ptr %ip, align 8
  %i1 = getelementptr inbounds nuw %struct.anon, ptr %s, i32 0, i32 0
  store i32 1, ptr %i1, align 4
  %call = call ptr @self(ptr noundef %s)
  store ptr %call, ptr %sp, align 8
  %0 = load ptr, ptr %ip, align 8
  store i32 0, ptr %0, align 4
  %1 = load ptr, ptr %sp, align 8
  %i2 = getelementptr inbounds nuw %struct.anon, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %i2, align 4
  %add = add nsw i32 %2, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @self(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f()
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
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
