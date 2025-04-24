; 168457329807163791498391260521334184913
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168457329807163791498391260521334184913_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168457329807163791498391260521334184913.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, i16, [8 x i8] }

@arr = dso_local global [100 x i8] zeroinitializer, align 16
@ptr = dso_local global ptr @arr, align 8
@idx = dso_local global i32 3, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@s = dso_local global %struct.S zeroinitializer, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local void @arg_ptr(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @arg_idx(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @glob_ptr() #0 {
entry:
  %0 = load ptr, ptr @ptr, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @glob_idx() #0 {
entry:
  %0 = load ptr, ptr @ptr, align 8
  %1 = load i32, ptr @idx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.prefetch.p0(ptr getelementptr inbounds nuw (%struct.S, ptr @s, i32 0, i32 1), i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x i8], ptr getelementptr inbounds nuw (%struct.S, ptr @s, i32 0, i32 2), i64 0, i64 1), i32 0, i32 0, i32 1)
  call void @arg_ptr(ptr noundef getelementptr inbounds ([8 x i8], ptr getelementptr inbounds nuw (%struct.S, ptr @s, i32 0, i32 2), i64 0, i64 1))
  %0 = load ptr, ptr @ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 3
  call void @arg_ptr(ptr noundef %add.ptr)
  %1 = load ptr, ptr @ptr, align 8
  call void @arg_idx(ptr noundef %1, i32 noundef 3)
  %2 = load ptr, ptr @ptr, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %2, i64 1
  call void @arg_idx(ptr noundef %add.ptr1, i32 noundef 2)
  store i32 3, ptr @idx, align 4
  call void @glob_ptr()
  call void @glob_idx()
  %3 = load ptr, ptr @ptr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr @ptr, align 8
  store i32 2, ptr @idx, align 4
  call void @glob_ptr()
  call void @glob_idx()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
