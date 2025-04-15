; 144972659506437928705141415850170153081
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144972659506437928705141415850170153081.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144972659506437928705141415850170153081.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor_dimension = type { i32, i32, i32 }
%struct.gfc_array_i4 = type { ptr, i32, [10 x %struct.descriptor_dimension] }

@constinit = private constant <{ %struct.descriptor_dimension, %struct.descriptor_dimension, [8 x %struct.descriptor_dimension] }> <{ %struct.descriptor_dimension { i32 1, i32 1, i32 3 }, %struct.descriptor_dimension { i32 3, i32 1, i32 3 }, [8 x %struct.descriptor_dimension] zeroinitializer }>, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @msum_i4(ptr noundef %retarray, ptr noundef %array, ptr noundef %pdim) #0 {
entry:
  %retarray.addr = alloca ptr, align 8
  %array.addr = alloca ptr, align 8
  %pdim.addr = alloca ptr, align 8
  %count = alloca [7 x i32], align 16
  %extent = alloca [7 x i32], align 16
  %dest = alloca ptr, align 8
  %base = alloca ptr, align 8
  %dim = alloca i32, align 4
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %retarray, ptr %retarray.addr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %pdim, ptr %pdim.addr, align 8
  %0 = load ptr, ptr %pdim.addr, align 8
  %1 = load i32, ptr %0, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %dim, align 4
  %2 = load ptr, ptr %array.addr, align 8
  %dim1 = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %dim, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.descriptor_dimension], ptr %dim1, i64 0, i64 %idxprom
  %ubound = getelementptr inbounds nuw %struct.descriptor_dimension, ptr %arrayidx, i32 0, i32 2
  %4 = load i32, ptr %ubound, align 4
  %add = add nsw i32 %4, 1
  %5 = load ptr, ptr %array.addr, align 8
  %dim2 = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %dim, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [10 x %struct.descriptor_dimension], ptr %dim2, i64 0, i64 %idxprom3
  %lbound = getelementptr inbounds nuw %struct.descriptor_dimension, ptr %arrayidx4, i32 0, i32 1
  %7 = load i32, ptr %lbound, align 4
  %sub5 = sub nsw i32 %add, %7
  store i32 %sub5, ptr %len, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %n, align 4
  %9 = load i32, ptr %dim, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %array.addr, align 8
  %dim6 = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %n, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [10 x %struct.descriptor_dimension], ptr %dim6, i64 0, i64 %idxprom7
  %ubound9 = getelementptr inbounds nuw %struct.descriptor_dimension, ptr %arrayidx8, i32 0, i32 2
  %12 = load i32, ptr %ubound9, align 4
  %add10 = add nsw i32 %12, 1
  %13 = load ptr, ptr %array.addr, align 8
  %dim11 = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %n, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [10 x %struct.descriptor_dimension], ptr %dim11, i64 0, i64 %idxprom12
  %lbound14 = getelementptr inbounds nuw %struct.descriptor_dimension, ptr %arrayidx13, i32 0, i32 1
  %15 = load i32, ptr %lbound14, align 4
  %sub15 = sub nsw i32 %add10, %15
  %16 = load i32, ptr %n, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [7 x i32], ptr %extent, i64 0, i64 %idxprom16
  store i32 %sub15, ptr %arrayidx17, align 4
  %17 = load i32, ptr %n, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [7 x i32], ptr %count, i64 0, i64 %idxprom18
  store i32 0, ptr %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %n, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %retarray.addr, align 8
  %data = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %data, align 8
  store ptr %20, ptr %dest, align 8
  %21 = load ptr, ptr %array.addr, align 8
  %data20 = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %data20, align 8
  store ptr %22, ptr %base, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  store i32 0, ptr %result, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc25, %do.body
  %23 = load i32, ptr %n, align 4
  %24 = load i32, ptr %len, align 4
  %cmp22 = icmp slt i32 %23, %24
  br i1 %cmp22, label %for.body23, label %for.end27

for.body23:                                       ; preds = %for.cond21
  %25 = load ptr, ptr %base, align 8
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %result, align 4
  %add24 = add nsw i32 %27, %26
  store i32 %add24, ptr %result, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body23
  %28 = load i32, ptr %n, align 4
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, ptr %n, align 4
  %29 = load ptr, ptr %base, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %base, align 8
  br label %for.cond21, !llvm.loop !8

for.end27:                                        ; preds = %for.cond21
  %30 = load i32, ptr %result, align 4
  %31 = load ptr, ptr %dest, align 8
  store i32 %30, ptr %31, align 4
  %arrayidx28 = getelementptr inbounds [7 x i32], ptr %count, i64 0, i64 0
  %32 = load i32, ptr %arrayidx28, align 16
  %inc29 = add nsw i32 %32, 1
  store i32 %inc29, ptr %arrayidx28, align 16
  %33 = load ptr, ptr %dest, align 8
  %add.ptr = getelementptr inbounds i32, ptr %33, i64 1
  store ptr %add.ptr, ptr %dest, align 8
  br label %do.cond

do.cond:                                          ; preds = %for.end27
  %arrayidx30 = getelementptr inbounds [7 x i32], ptr %count, i64 0, i64 0
  %34 = load i32, ptr %arrayidx30, align 16
  %arrayidx31 = getelementptr inbounds [7 x i32], ptr %extent, i64 0, i64 0
  %35 = load i32, ptr %arrayidx31, align 16
  %cmp32 = icmp ne i32 %34, %35
  br i1 %cmp32, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rdata = alloca [3 x i32], align 4
  %adata = alloca [9 x i32], align 16
  %retarray = alloca %struct.gfc_array_i4, align 8
  %array = alloca %struct.gfc_array_i4, align 8
  %dim5 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %retarray, i8 0, i64 136, i1 false)
  %data = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %retarray, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], ptr %rdata, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8
  %dtype = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %retarray, i32 0, i32 1
  store i32 265, ptr %dtype, align 8
  %dim = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %retarray, i32 0, i32 2
  %stride = getelementptr inbounds nuw %struct.descriptor_dimension, ptr %dim, i32 0, i32 0
  store i32 1, ptr %stride, align 4
  %lbound = getelementptr inbounds nuw %struct.descriptor_dimension, ptr %dim, i32 0, i32 1
  store i32 1, ptr %lbound, align 4
  %ubound = getelementptr inbounds nuw %struct.descriptor_dimension, ptr %dim, i32 0, i32 2
  store i32 3, ptr %ubound, align 4
  %data1 = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %array, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [9 x i32], ptr %adata, i64 0, i64 0
  store ptr %arraydecay2, ptr %data1, align 8
  %dtype3 = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %array, i32 0, i32 1
  store i32 266, ptr %dtype3, align 8
  %dim4 = getelementptr inbounds nuw %struct.gfc_array_i4, ptr %array, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr align 4 %dim4, i8 0, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dim4, ptr align 4 @constinit, i64 120, i1 false)
  %0 = getelementptr i8, ptr %array, i64 132
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 4, i1 false)
  store i32 2, ptr %dim5, align 4
  call void @msum_i4(ptr noundef %retarray, ptr noundef %array, ptr noundef %dim5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!9 = distinct !{!9, !7}
