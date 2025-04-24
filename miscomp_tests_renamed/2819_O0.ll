; 149359843177015058763969246142123521758
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/149359843177015058763969246142123521758.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/149359843177015058763969246142123521758.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f1(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f2(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %and = and i64 %0, -4278190081
  ret i64 %and
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f3(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %and = and i64 %0, 255
  ret i64 %and
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f4(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %and = and i64 %0, -256
  ret i64 %and
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f5(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %and = and i64 %0, 65535
  ret i64 %and
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f6(i64 noundef %a) #0 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %and = and i64 %0, -65536
  ret i64 %and
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 2309737967, ptr %a, align 8
  %0 = load i64, ptr %a, align 8
  %call = call i64 @f1(i64 noundef %0)
  %cmp = icmp ne i64 %call, 2298478592
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %a, align 8
  %call1 = call i64 @f2(i64 noundef %1)
  %cmp2 = icmp ne i64 %call1, 11259375
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i64, ptr %a, align 8
  %call4 = call i64 @f3(i64 noundef %2)
  %cmp5 = icmp ne i64 %call4, 239
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load i64, ptr %a, align 8
  %call7 = call i64 @f4(i64 noundef %3)
  %cmp8 = icmp ne i64 %call7, 2309737728
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %4 = load i64, ptr %a, align 8
  %call10 = call i64 @f5(i64 noundef %4)
  %cmp11 = icmp ne i64 %call10, 52719
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %5 = load i64, ptr %a, align 8
  %call13 = call i64 @f6(i64 noundef %5)
  %cmp14 = icmp ne i64 %call13, 2309685248
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false12
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
