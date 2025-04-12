; 137234115113643132639265893884828123205
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137234115113643132639265893884828123205.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137234115113643132639265893884828123205.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i8, i32 }
%struct.inode = type { i64, ptr }
%struct.file = type { i64 }

@s = dso_local global %struct.super_block zeroinitializer, align 4
@i = dso_local global %struct.inode zeroinitializer, align 8
@f = dso_local global %struct.file zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 512, ptr @s, align 4
  store i8 9, ptr getelementptr inbounds nuw (%struct.super_block, ptr @s, i32 0, i32 1), align 4
  store i64 2048, ptr @i, align 8
  store ptr @s, ptr getelementptr inbounds nuw (%struct.inode, ptr @i, i32 0, i32 1), align 8
  store i64 0, ptr @f, align 8
  %call = call i32 @do_isofs_readdir(ptr noundef @i, ptr noundef @f)
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @do_isofs_readdir(ptr noundef %inode, ptr noundef %filp) #0 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %bufsize = alloca i32, align 4
  %bufbits = alloca i8, align 1
  %block = alloca i32, align 4
  %offset = alloca i32, align 4
  %bh = alloca ptr, align 8
  %hs = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  %0 = load ptr, ptr %inode.addr, align 8
  %i_sb = getelementptr inbounds nuw %struct.inode, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %i_sb, align 8
  %s_blocksize = getelementptr inbounds nuw %struct.super_block, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %s_blocksize, align 4
  store i32 %2, ptr %bufsize, align 4
  %3 = load ptr, ptr %inode.addr, align 8
  %i_sb1 = getelementptr inbounds nuw %struct.inode, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %i_sb1, align 8
  %s_blocksize_bits = getelementptr inbounds nuw %struct.super_block, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %s_blocksize_bits, align 4
  store i8 %5, ptr %bufbits, align 1
  store ptr null, ptr %bh, align 8
  %6 = load ptr, ptr %filp.addr, align 8
  %f_pos = getelementptr inbounds nuw %struct.file, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %f_pos, align 8
  %8 = load ptr, ptr %inode.addr, align 8
  %i_size = getelementptr inbounds nuw %struct.inode, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %i_size, align 8
  %cmp = icmp sge i64 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %filp.addr, align 8
  %f_pos2 = getelementptr inbounds nuw %struct.file, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %f_pos2, align 8
  %12 = load i32, ptr %bufsize, align 4
  %sub = sub nsw i32 %12, 1
  %conv = sext i32 %sub to i64
  %and = and i64 %11, %conv
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, ptr %offset, align 4
  %13 = load ptr, ptr %filp.addr, align 8
  %f_pos4 = getelementptr inbounds nuw %struct.file, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %f_pos4, align 8
  %15 = load i8, ptr %bufbits, align 1
  %conv5 = zext i8 %15 to i32
  %sh_prom = zext i32 %conv5 to i64
  %shr = ashr i64 %14, %sh_prom
  %conv6 = trunc i64 %shr to i32
  store i32 %conv6, ptr %block, align 4
  %16 = load ptr, ptr %inode.addr, align 8
  %i_sb7 = getelementptr inbounds nuw %struct.inode, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %i_sb7, align 8
  %s_hs = getelementptr inbounds nuw %struct.super_block, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %s_hs, align 4
  store i32 %18, ptr %hs, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end
  %19 = load ptr, ptr %filp.addr, align 8
  %f_pos8 = getelementptr inbounds nuw %struct.file, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %f_pos8, align 8
  %21 = load ptr, ptr %inode.addr, align 8
  %i_size9 = getelementptr inbounds nuw %struct.inode, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %i_size9, align 8
  %cmp10 = icmp slt i64 %20, %22
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load ptr, ptr %bh, align 8
  %tobool = icmp ne ptr %23, null
  br i1 %tobool, label %if.end13, label %if.then12

if.then12:                                        ; preds = %while.body
  %24 = load i32, ptr %block, align 4
  %call = call ptr @isofs_bread(i32 noundef %24)
  store ptr %call, ptr %bh, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %while.body
  %25 = load i32, ptr %block, align 4
  %26 = load i8, ptr %bufbits, align 1
  %conv14 = zext i8 %26 to i32
  %shl = shl i32 %25, %conv14
  %27 = load i32, ptr %hs, align 4
  %add = add i32 %27, %shl
  store i32 %add, ptr %hs, align 4
  %28 = load i32, ptr %hs, align 4
  %cmp15 = icmp eq i32 %28, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %29 = load ptr, ptr %filp.addr, align 8
  %f_pos18 = getelementptr inbounds nuw %struct.file, ptr %29, i32 0, i32 0
  %30 = load i64, ptr %f_pos18, align 8
  %inc = add nsw i64 %30, 1
  store i64 %inc, ptr %f_pos18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13
  %31 = load i32, ptr %offset, align 4
  %32 = load i32, ptr %bufsize, align 4
  %cmp20 = icmp uge i32 %31, %32
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end19
  %33 = load i32, ptr %bufsize, align 4
  %sub23 = sub nsw i32 %33, 1
  %34 = load i32, ptr %offset, align 4
  %and24 = and i32 %34, %sub23
  store i32 %and24, ptr %offset, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19
  %35 = load ptr, ptr %bh, align 8
  %36 = load i8, ptr %35, align 1
  %tobool26 = icmp ne i8 %36, 0
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end25
  %37 = load ptr, ptr %filp.addr, align 8
  %f_pos28 = getelementptr inbounds nuw %struct.file, ptr %37, i32 0, i32 0
  %38 = load i64, ptr %f_pos28, align 8
  %inc29 = add nsw i64 %38, 1
  store i64 %inc29, ptr %f_pos28, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25
  %39 = load ptr, ptr %filp.addr, align 8
  %f_pos31 = getelementptr inbounds nuw %struct.file, ptr %39, i32 0, i32 0
  %40 = load i64, ptr %f_pos31, align 8
  %inc32 = add nsw i64 %40, 1
  store i64 %inc32, ptr %f_pos31, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal ptr @isofs_bread(i32 noundef %block) #0 {
entry:
  %block.addr = alloca i32, align 4
  store i32 %block, ptr %block.addr, align 4
  %0 = load i32, ptr %block.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

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
