; 100854957104534053710770073919615646499
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100854957104534053710770073919615646499_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100854957104534053710770073919615646499.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_data = type { i8, [3 x i8] }
%struct.table_elt = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8 }

@table = internal global [32 x ptr] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @invalidate_memory(ptr noundef %writes) #0 {
entry:
  %writes.addr = alloca ptr, align 8
  %all = alloca i32, align 4
  %nonscalar = alloca i32, align 4
  %i5 = alloca i32, align 4
  store ptr %writes, ptr %writes.addr, align 8
  %0 = load ptr, ptr %writes.addr, align 8
  %bf.load = load i8, ptr %0, align 4
  %bf.shl = shl i8 %bf.load, 4
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  store i32 %bf.cast, ptr %all, align 4
  %1 = load ptr, ptr %writes.addr, align 8
  %bf.load1 = load i8, ptr %1, align 4
  %bf.shl2 = shl i8 %bf.load1, 5
  %bf.ashr3 = ashr i8 %bf.shl2, 7
  %bf.cast4 = sext i8 %bf.ashr3 to i32
  store i32 %bf.cast4, ptr %nonscalar, align 4
  store i32 0, ptr %i5, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i5, align 4
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i5, align 4
  %cmp6 = icmp eq i32 %3, 5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i5, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i5, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  ret void
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
  call void @abort() #3
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
  call void @invalidate_memory(ptr noundef %writes)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
