; 183572998736226603925266663735384472169
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183572998736226603925266663735384472169.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183572998736226603925266663735384472169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8 }
%struct.write_data = type { i8, [3 x i8] }

@table = internal global [32 x ptr] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @invalidate_memory(ptr noundef %writes) #0 {
entry:
  %writes.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %next = alloca ptr, align 8
  %all = alloca i32, align 4
  %nonscalar = alloca i32, align 4
  store ptr %writes, ptr %writes.addr, align 8
  store i32 20, ptr %all, align 4
  %0 = load ptr, ptr %writes.addr, align 8
  %bf.load = load i8, ptr %0, align 4
  %bf.shl = shl i8 %bf.load, 5
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  store i32 %bf.cast, ptr %nonscalar, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 31
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %p, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %p, align 8
  %next_same_hash = getelementptr inbounds nuw %struct.table_elt, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %next_same_hash, align 8
  store ptr %6, ptr %next, align 8
  %7 = load ptr, ptr %p, align 8
  %in_memory = getelementptr inbounds nuw %struct.table_elt, ptr %7, i32 0, i32 9
  %8 = load i8, ptr %in_memory, align 8
  %conv = sext i8 %8 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body2
  %9 = load i32, ptr %all, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i32, ptr %nonscalar, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %land.lhs.true6, label %lor.lhs.false9

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %p, align 8
  %in_struct = getelementptr inbounds nuw %struct.table_elt, ptr %11, i32 0, i32 10
  %12 = load i8, ptr %in_struct, align 1
  %conv7 = sext i8 %12 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  br i1 %tobool8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true6, %lor.lhs.false
  %13 = load ptr, ptr %p, align 8
  %exp = getelementptr inbounds nuw %struct.table_elt, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %exp, align 8
  %call = call i32 @cse_rtx_addr_varies_p(ptr noundef %14)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %land.lhs.true6, %land.lhs.true
  %15 = load ptr, ptr %p, align 8
  %16 = load i32, ptr %i, align 4
  call void @remove_from_table(ptr noundef %15, i32 noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false9, %for.body2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load ptr, ptr %next, align 8
  store ptr %17, ptr %p, align 8
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
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
!8 = distinct !{!8, !7}
