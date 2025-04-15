; 176987141583046419845837325307597317124
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/176987141583046419845837325307597317124_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/176987141583046419845837325307597317124.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8 }
%struct.write_data = type { i8, [3 x i8] }

@table = internal global [32 x ptr] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"a is: %d\0A\00", align 1

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
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 31
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [32 x ptr], ptr @table, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %p, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %5 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond5
  %6 = load ptr, ptr %p, align 8
  %next_same_hash = getelementptr inbounds nuw %struct.table_elt, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next_same_hash, align 8
  store ptr %7, ptr %next, align 8
  %8 = load ptr, ptr %p, align 8
  %in_memory = getelementptr inbounds nuw %struct.table_elt, ptr %8, i32 0, i32 9
  %9 = load i8, ptr %in_memory, align 8
  %conv = sext i8 %9 to i32
  %tobool7 = icmp ne i32 %conv, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %10 = load i32, ptr %all, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load i32, ptr %nonscalar, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %land.lhs.true10, label %lor.lhs.false13

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %p, align 8
  %in_struct = getelementptr inbounds nuw %struct.table_elt, ptr %12, i32 0, i32 10
  %13 = load i8, ptr %in_struct, align 1
  %conv11 = sext i8 %13 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %land.lhs.true10, %lor.lhs.false
  %14 = load ptr, ptr %p, align 8
  %exp = getelementptr inbounds nuw %struct.table_elt, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %exp, align 8
  %call = call i32 @cse_rtx_addr_varies_p(ptr noundef %15)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false13, %land.lhs.true10, %land.lhs.true
  %16 = load ptr, ptr %p, align 8
  %17 = load i32, ptr %i, align 4
  call void @remove_from_table(ptr noundef %16, i32 noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false13, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load ptr, ptr %next, align 8
  store ptr %18, ptr %p, align 8
  br label %for.cond5, !llvm.loop !6

for.end:                                          ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end16:                                        ; preds = %for.cond
  %20 = load i32, ptr %i, align 4
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20)
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
  call void @abort() #4
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind }

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
