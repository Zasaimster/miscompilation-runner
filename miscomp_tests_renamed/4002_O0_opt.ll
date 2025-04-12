; 172255132902110210754439292981665704959
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/172255132902110210754439292981665704959_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/172255132902110210754439292981665704959.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockvector = type { i32, [2 x ptr] }
%struct.block = type { i64, i64, ptr, ptr, i8, i32, [1 x %struct.symbol] }
%struct.symbol = type { i32, ptr }
%struct.symtab = type { ptr }

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1

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
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load ptr, ptr %bl, align 8
  %block = getelementptr inbounds nuw %struct.blockvector, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %block, i64 0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  store ptr %1, ptr %b, align 8
  store i32 0, ptr %bot, align 4
  %2 = load ptr, ptr %bl, align 8
  %nblocks = getelementptr inbounds nuw %struct.blockvector, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nblocks, align 8
  store i32 %3, ptr %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, ptr %top, align 4
  %5 = load i32, ptr %bot, align 4
  %sub = sub nsw i32 %4, %5
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %top, align 4
  %7 = load i32, ptr %bot, align 4
  %sub1 = sub nsw i32 %6, %7
  %add = add nsw i32 %sub1, 1
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %half, align 4
  %8 = load ptr, ptr %bl, align 8
  %block2 = getelementptr inbounds nuw %struct.blockvector, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %bot, align 4
  %10 = load i32, ptr %half, align 4
  %add3 = add nsw i32 %9, %10
  %idxprom = sext i32 %add3 to i64
  %arrayidx4 = getelementptr inbounds [2 x ptr], ptr %block2, i64 0, i64 %idxprom
  %11 = load ptr, ptr %arrayidx4, align 8
  store ptr %11, ptr %b, align 8
  %12 = load ptr, ptr %b, align 8
  %startaddr = getelementptr inbounds nuw %struct.block, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %startaddr, align 8
  %14 = load i64, ptr %pc.addr, align 8
  %cmp5 = icmp ule i64 %13, %14
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %15 = load i32, ptr %half, align 4
  %16 = load i32, ptr %bot, align 4
  %add6 = add nsw i32 %16, %15
  store i32 %add6, ptr %bot, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %17 = load i32, ptr %bot, align 4
  %18 = load i32, ptr %half, align 4
  %add7 = add nsw i32 %17, %18
  store i32 %add7, ptr %top, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %while.cond8

while.cond8:                                      ; preds = %if.end16, %while.end
  %19 = load i32, ptr %bot, align 4
  %cmp9 = icmp sge i32 %19, 0
  br i1 %cmp9, label %while.body10, label %while.end17

while.body10:                                     ; preds = %while.cond8
  %20 = load ptr, ptr %bl, align 8
  %block11 = getelementptr inbounds nuw %struct.blockvector, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %bot, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [2 x ptr], ptr %block11, i64 0, i64 %idxprom12
  %22 = load ptr, ptr %arrayidx13, align 8
  store ptr %22, ptr %b, align 8
  %23 = load ptr, ptr %b, align 8
  %endaddr = getelementptr inbounds nuw %struct.block, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %endaddr, align 8
  %25 = load i64, ptr %pc.addr, align 8
  %cmp14 = icmp ugt i64 %24, %25
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body10
  %26 = load ptr, ptr %bl, align 8
  store ptr %26, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %while.body10
  %27 = load i32, ptr %bot, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %bot, align 4
  br label %while.cond8, !llvm.loop !8

while.end17:                                      ; preds = %while.cond8
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end17, %if.then15
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
