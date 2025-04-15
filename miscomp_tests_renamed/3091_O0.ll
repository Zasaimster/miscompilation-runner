; 100462305737938237522855292526876178663
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100462305737938237522855292526876178663.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100462305737938237522855292526876178663.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [11 x i8], i32 }

@cell = dso_local global %struct.s zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check(i64 %p.coerce0, i64 %p.coerce1) #0 {
entry:
  %p = alloca %struct.s, align 4
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %p, i32 0, i32 0
  store i64 %p.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i64 }, ptr %p, i32 0, i32 1
  store i64 %p.coerce1, ptr %1, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 99, ptr getelementptr inbounds nuw (%struct.s, ptr @cell, i32 0, i32 1), align 4
  %call = call ptr @strcpy(ptr noundef @cell, ptr noundef @.str) #4
  %0 = load i64, ptr @cell, align 4
  %1 = load i64, ptr getelementptr inbounds nuw ({ i64, i64 }, ptr @cell, i32 0, i32 1), align 4
  %call1 = call i32 @check(i64 %0, i64 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
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
