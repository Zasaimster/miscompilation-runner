; 198476195408254289589812998495487530193
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/198476195408254289589812998495487530193.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/198476195408254289589812998495487530193.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i64, i64, ptr, ptr, i8, i32, [1 x %struct.symbol] }
%struct.symbol = type { i32, ptr }
%struct.blockvector = type { i32, [2 x ptr] }
%struct.symtab = type { ptr }

@.str = private unnamed_addr constant [24 x i8] c"This will not execute.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @blockvector_for_pc_sect(i64 noundef %pc, ptr noundef %symtab) #0 {
entry:
  %pc.addr = alloca i64, align 8
  %symtab.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  %bot = alloca i32, align 4
  %top = alloca i32, align 4
  %half = alloca i32, align 4
  %bl = alloca ptr, align 8
  store i64 %pc, ptr %pc.addr, align 8
  store ptr %symtab, ptr %symtab.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %while.body
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.block, align 8
  %b = alloca %struct.block, align 8
  %bv = alloca %struct.blockvector, align 8
  %s = alloca %struct.symtab, align 8
  %ret = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %a, i8 0, i64 56, i1 false)
  %0 = getelementptr inbounds { i64, i64, ptr, ptr, i8, [3 x i8], i32, [1 x %struct.symbol] }, ptr %a, i32 0, i32 1
  store i64 65536, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64, ptr, ptr, i8, [3 x i8], i32, [1 x %struct.symbol] }, ptr %a, i32 0, i32 4
  store i8 1, ptr %1, align 8
  %2 = getelementptr inbounds { i64, i64, ptr, ptr, i8, [3 x i8], i32, [1 x %struct.symbol] }, ptr %a, i32 0, i32 6
  store i32 20, ptr %2, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %b, i8 0, i64 56, i1 false)
  %3 = getelementptr inbounds { i64, i64, ptr, ptr, i8, [3 x i8], i32, [1 x %struct.symbol] }, ptr %b, i32 0, i32 0
  store i64 65536, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64, ptr, ptr, i8, [3 x i8], i32, [1 x %struct.symbol] }, ptr %b, i32 0, i32 1
  store i64 131072, ptr %4, align 8
  %5 = getelementptr inbounds { i64, i64, ptr, ptr, i8, [3 x i8], i32, [1 x %struct.symbol] }, ptr %b, i32 0, i32 4
  store i8 1, ptr %5, align 8
  %6 = getelementptr inbounds { i64, i64, ptr, ptr, i8, [3 x i8], i32, [1 x %struct.symbol] }, ptr %b, i32 0, i32 6
  store i32 20, ptr %6, align 4
  %nblocks = getelementptr inbounds nuw %struct.blockvector, ptr %bv, i32 0, i32 0
  store i32 2, ptr %nblocks, align 8
  %7 = getelementptr i8, ptr %bv, i64 4
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 4, i1 false)
  %block = getelementptr inbounds nuw %struct.blockvector, ptr %bv, i32 0, i32 1
  store ptr %a, ptr %block, align 8
  %arrayinit.element = getelementptr inbounds ptr, ptr %block, i64 1
  store ptr %b, ptr %arrayinit.element, align 8
  %blockvector = getelementptr inbounds nuw %struct.symtab, ptr %s, i32 0, i32 0
  store ptr %bv, ptr %blockvector, align 8
  %call = call ptr @blockvector_for_pc_sect(i64 noundef 1280, ptr noundef %s)
  store ptr %call, ptr %ret, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
