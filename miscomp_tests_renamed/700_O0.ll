; 192509392950408641359959754420095628369
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192509392950408641359959754420095628369.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192509392950408641359959754420095628369.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor_dimension = type { i32, i32, i32 }
%struct.gfc_array_i4 = type { ptr, i32, [7 x %struct.descriptor_dimension] }

@constinit = private constant [7 x %struct.descriptor_dimension] [%struct.descriptor_dimension { i32 1, i32 1, i32 3 }, %struct.descriptor_dimension { i32 3, i32 1, i32 3 }, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer, %struct.descriptor_dimension zeroinitializer], align 4

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
  store ptr %retarray, ptr %retarray.addr, align 8
  store ptr %array, ptr %array.addr, align 8
  store ptr %pdim, ptr %pdim.addr, align 8
  %0 = load ptr, ptr %pdim.addr, align 8
  %1 = load i32, ptr %0, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %dim, align 4
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
  call void @llvm.memset.p0.i64(ptr align 8 %retarray, i8 0, i64 96, i1 false)
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dim4, ptr align 4 @constinit, i64 84, i1 false)
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
