; 165491148711797027261389589053242729095
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165491148711797027261389589053242729095.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165491148711797027261389589053242729095.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(ptr noundef %x, i32 noundef %f, i32 noundef %g, i32 noundef %h, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %f.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %f, ptr %f.addr, align 4
  store i32 %g, ptr %g.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef byval(%struct.baz) align 8 %x, ptr noundef %y) #0 {
entry:
  %y.addr = alloca ptr, align 8
  store ptr %y, ptr %y.addr, align 8
  call void @bar(ptr noundef %x, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.baz, align 8
  store i32 0, ptr %retval, align 4
  %a = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 0
  store i32 1, ptr %a, align 4
  %b = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 1
  store i32 2, ptr %b, align 4
  %c = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 2
  store i32 3, ptr %c, align 4
  %d = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 3
  store i32 4, ptr %d, align 4
  %e = getelementptr inbounds nuw %struct.baz, ptr %x, i32 0, i32 4
  store i32 5, ptr %e, align 4
  call void @foo(ptr noundef byval(%struct.baz) align 8 %x, ptr noundef null)
  call void @exit(i32 noundef 0) #4
  unreachable
}

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
