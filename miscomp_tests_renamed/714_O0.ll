; 112619943568763822653870884456746418584
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/112619943568763822653870884456746418584.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/112619943568763822653870884456746418584.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test2 = type { float, %struct.test1 }
%struct.test1 = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"y is %d\0A\00", align 1
@global = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bla(ptr noundef %xa, ptr noundef %xb) #0 {
entry:
  %xa.addr = alloca ptr, align 8
  %xb.addr = alloca ptr, align 8
  store ptr %xa, ptr %xa.addr, align 8
  store ptr %xb, ptr %xb.addr, align 8
  %0 = load i32, ptr @global, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  %1 = load ptr, ptr %xb.addr, align 8
  %sub = getelementptr inbounds nuw %struct.test2, ptr %1, i32 0, i32 1
  %a = getelementptr inbounds nuw %struct.test1, ptr %sub, i32 0, i32 0
  store i32 1, ptr %a, align 4
  %2 = load ptr, ptr %xa.addr, align 8
  %a1 = getelementptr inbounds nuw %struct.test1, ptr %2, i32 0, i32 0
  store i32 8, ptr %a1, align 4
  %3 = load ptr, ptr %xb.addr, align 8
  %sub2 = getelementptr inbounds nuw %struct.test2, ptr %3, i32 0, i32 1
  %a3 = getelementptr inbounds nuw %struct.test1, ptr %sub2, i32 0, i32 0
  %4 = load i32, ptr %a3, align 4
  ret i32 %4
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pom = alloca %struct.test2, align 4
  store i32 0, ptr %retval, align 4
  %sub = getelementptr inbounds nuw %struct.test2, ptr %pom, i32 0, i32 1
  %call = call i32 @bla(ptr noundef %sub, ptr noundef %pom)
  %cmp = icmp ne i32 %call, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
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
