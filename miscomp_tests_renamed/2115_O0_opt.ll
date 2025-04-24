; 137323378986880539503179370425644889805
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137323378986880539503179370425644889805_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137323378986880539503179370425644889805.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_common = type { ptr, ptr, i16 }
%union.tree_node = type { %struct.tree_common }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unsigned enum bit-fields broken\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @blah() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @convert_like_real(ptr noundef %convs) #0 {
entry:
  %retval = alloca i32, align 4
  %convs.addr = alloca ptr, align 8
  store ptr %convs, ptr %convs.addr, align 8
  %0 = load ptr, ptr %convs.addr, align 8
  %code = getelementptr inbounds nuw %struct.tree_common, ptr %0, i32 0, i32 2
  %bf.load = load i16, ptr %code, align 8
  %bf.clear = and i16 %bf.load, 255
  %bf.cast = zext i16 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 152, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 @blah()
  store i32 %call, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %convs = alloca %union.tree_node, align 8
  store i32 0, ptr %retval, align 4
  %code = getelementptr inbounds nuw %struct.tree_common, ptr %convs, i32 0, i32 2
  %bf.load = load i16, ptr %code, align 8
  %bf.clear = and i16 %bf.load, -256
  %bf.set = or i16 %bf.clear, 152
  store i16 %bf.set, ptr %code, align 8
  %call = call i32 @convert_like_real(ptr noundef %convs)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
