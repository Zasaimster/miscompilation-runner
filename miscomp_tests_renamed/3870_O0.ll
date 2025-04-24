; 167708581569746930108425163629124035185
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167708581569746930108425163629124035185.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167708581569746930108425163629124035185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { ptr }
%struct.blockvector = type { i32, [2 x ptr] }
%struct.block = type { i64, i64, ptr, ptr, i8, i32, [1 x %struct.symbol] }
%struct.symbol = type { i32, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @blockvector_for_pc_sect(i64 noundef %pc, ptr noundef %symtab) #0 {
entry:
  %retval = alloca ptr, align 8
  %pc.addr = alloca i64, align 8
  %symtab.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  %bot = alloca i32, align 4
  %top = alloca i32, align 4
  %half = alloca i32, align 4
  %bl = alloca ptr, align 8
  store i64 %pc, ptr %pc.addr, align 8
  store ptr %symtab, ptr %symtab.addr, align 8
  %0 = load ptr, ptr %symtab.addr, align 8
  %blockvector = getelementptr inbounds nuw %struct.symtab, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %blockvector, align 8
  store ptr %1, ptr %bl, align 8
  %2 = load ptr, ptr %bl, align 8
  %block = getelementptr inbounds nuw %struct.blockvector, ptr %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %block, i64 0, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %b, align 8
  store i32 0, ptr %bot, align 4
  %4 = load ptr, ptr %bl, align 8
  %nblocks = getelementptr inbounds nuw %struct.blockvector, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nblocks, align 8
  store i32 %5, ptr %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %6 = load i32, ptr %top, align 4
  %7 = load i32, ptr %bot, align 4
  %sub = sub nsw i32 %6, %7
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %top, align 4
  %9 = load i32, ptr %bot, align 4
  %sub1 = sub nsw i32 %8, %9
  %add = add nsw i32 %sub1, 1
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %half, align 4
  %10 = load ptr, ptr %bl, align 8
  %block2 = getelementptr inbounds nuw %struct.blockvector, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %bot, align 4
  %12 = load i32, ptr %half, align 4
  %add3 = add nsw i32 %11, %12
  %idxprom = sext i32 %add3 to i64
  %arrayidx4 = getelementptr inbounds [2 x ptr], ptr %block2, i64 0, i64 %idxprom
  %13 = load ptr, ptr %arrayidx4, align 8
  store ptr %13, ptr %b, align 8
  %14 = load ptr, ptr %b, align 8
  %startaddr = getelementptr inbounds nuw %struct.block, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %startaddr, align 8
  %16 = load i64, ptr %pc.addr, align 8
  %cmp5 = icmp ule i64 %15, %16
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %17 = load i32, ptr %half, align 4
  %18 = load i32, ptr %bot, align 4
  %add6 = add nsw i32 %18, %17
  store i32 %add6, ptr %bot, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %19 = load i32, ptr %bot, align 4
  %20 = load i32, ptr %half, align 4
  %add7 = add nsw i32 %19, %20
  store i32 %add7, ptr %top, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load ptr, ptr %b, align 8
  %cmp8 = icmp ugt ptr %21, inttoptr (i64 5 to ptr)
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %while.cond11

while.cond11:                                     ; preds = %if.end19, %while.end
  %22 = load i32, ptr %bot, align 4
  %cmp12 = icmp sge i32 %22, 0
  br i1 %cmp12, label %while.body13, label %while.end20

while.body13:                                     ; preds = %while.cond11
  %23 = load ptr, ptr %bl, align 8
  %block14 = getelementptr inbounds nuw %struct.blockvector, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %bot, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [2 x ptr], ptr %block14, i64 0, i64 %idxprom15
  %25 = load ptr, ptr %arrayidx16, align 8
  store ptr %25, ptr %b, align 8
  %26 = load ptr, ptr %b, align 8
  %endaddr = getelementptr inbounds nuw %struct.block, ptr %26, i32 0, i32 1
  %27 = load i64, ptr %endaddr, align 8
  %28 = load i64, ptr %pc.addr, align 8
  %cmp17 = icmp ugt i64 %27, %28
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.body13
  %29 = load ptr, ptr %bl, align 8
  store ptr %29, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %while.body13
  %30 = load i32, ptr %bot, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, ptr %bot, align 4
  br label %while.cond11, !llvm.loop !8

while.end20:                                      ; preds = %while.cond11
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end20, %if.then18
  %31 = load ptr, ptr %retval, align 8
  ret ptr %31
}

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
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
