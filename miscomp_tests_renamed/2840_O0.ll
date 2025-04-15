; 140034004993915386986720935974282115160
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140034004993915386986720935974282115160.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140034004993915386986720935974282115160.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_data = type { i8, [3 x i8] }
%struct.table_elt = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8 }

@table = internal global [32 x ptr] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compute() #0 {
entry:
  ret i32 42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cse_rtx_addr_varies_p(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @remove_from_table(ptr noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %y, ptr %y.addr, align 4
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %writes = alloca %struct.write_data, align 4
  %elt = alloca %struct.table_elt, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %elt, i8 0, i64 72, i1 false)
  %in_memory = getelementptr inbounds nuw %struct.table_elt, ptr %elt, i32 0, i32 9
  store i8 1, ptr %in_memory, align 8
  store ptr %elt, ptr @table, align 16
  call void @llvm.memset.p0.i64(ptr align 4 %writes, i8 0, i64 4, i1 false)
  %bf.load = load i8, ptr %writes, align 4
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, ptr %writes, align 4
  %bf.load1 = load i8, ptr %writes, align 4
  %bf.clear2 = and i8 %bf.load1, -5
  %bf.set3 = or i8 %bf.clear2, 4
  store i8 %bf.set3, ptr %writes, align 4
  %call = call i32 (ptr, ...) @invalidate_memory(ptr noundef %writes)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @invalidate_memory(...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
