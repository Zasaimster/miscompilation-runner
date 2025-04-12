; 160144924702793218575381766292856423608
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/160144924702793218575381766292856423608.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/160144924702793218575381766292856423608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i16, i16, [8 x i8], ptr }

@glob_int = dso_local global i32 4, align 4
@glob_int_arr = dso_local global [100 x i32] zeroinitializer, align 16
@glob_vol_ptr_int = dso_local global ptr @glob_int_arr, align 8
@glob_vol_int_arr = dso_local global [100 x i32] zeroinitializer, align 16
@glob_ptr_vol_int = dso_local global ptr @glob_vol_int_arr, align 8
@glob_vol_ptr_vol_int = dso_local global ptr @glob_vol_int_arr, align 8
@str = dso_local global %struct.S zeroinitializer, align 8
@vol_ptr_str = dso_local global ptr @str, align 8
@vol_str = dso_local global %struct.S zeroinitializer, align 8
@ptr_vol_str = dso_local global ptr @vol_str, align 8
@vol_ptr_vol_str = dso_local global ptr @vol_str, align 8
@stat_vol_int_arr = internal global [100 x i32] zeroinitializer, align 16
@stat_vol_ptr_int = internal global ptr @stat_int_arr, align 8
@stat_ptr_vol_int = internal global ptr @stat_vol_int_arr, align 8
@stat_vol_ptr_vol_int = internal global ptr @stat_vol_int_arr, align 8
@stat_vol_int = internal global i32 0, align 4
@glob_vol_int = dso_local global i32 0, align 4
@stat_int_arr = internal global [100 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_vol_global() #0 {
entry:
  call void @llvm.prefetch.p0(ptr @glob_vol_int_arr, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_vol_file() #0 {
entry:
  call void @llvm.prefetch.p0(ptr @stat_vol_int_arr, i32 0, i32 0, i32 1)
  %0 = load volatile ptr, ptr @stat_vol_ptr_int, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %1 = load ptr, ptr @stat_ptr_vol_int, align 8
  call void @llvm.prefetch.p0(ptr %1, i32 0, i32 0, i32 1)
  %2 = load volatile ptr, ptr @stat_vol_ptr_vol_int, align 8
  call void @llvm.prefetch.p0(ptr %2, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr @stat_vol_int, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expr_vol_global() #0 {
entry:
  call void @llvm.prefetch.p0(ptr @vol_str, i32 0, i32 0, i32 1)
  %0 = load ptr, ptr @ptr_vol_str, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %1 = load volatile ptr, ptr @vol_ptr_str, align 8
  call void @llvm.prefetch.p0(ptr %1, i32 0, i32 0, i32 1)
  %2 = load volatile ptr, ptr @vol_ptr_vol_str, align 8
  call void @llvm.prefetch.p0(ptr %2, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr getelementptr inbounds nuw (%struct.S, ptr @vol_str, i32 0, i32 1), i32 0, i32 0, i32 1)
  %3 = load ptr, ptr @ptr_vol_str, align 8
  %b = getelementptr inbounds nuw %struct.S, ptr %3, i32 0, i32 1
  call void @llvm.prefetch.p0(ptr %b, i32 0, i32 0, i32 1)
  %4 = load volatile ptr, ptr @vol_ptr_str, align 8
  %b1 = getelementptr inbounds nuw %struct.S, ptr %4, i32 0, i32 1
  call void @llvm.prefetch.p0(ptr %b1, i32 0, i32 0, i32 1)
  %5 = load volatile ptr, ptr @vol_ptr_vol_str, align 8
  %b2 = getelementptr inbounds nuw %struct.S, ptr %5, i32 0, i32 1
  call void @llvm.prefetch.p0(ptr %b2, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr getelementptr inbounds nuw (%struct.S, ptr @vol_str, i32 0, i32 3), i32 0, i32 0, i32 1)
  %6 = load volatile ptr, ptr @vol_ptr_str, align 8
  %d = getelementptr inbounds nuw %struct.S, ptr %6, i32 0, i32 3
  call void @llvm.prefetch.p0(ptr %d, i32 0, i32 0, i32 1)
  %7 = load ptr, ptr @ptr_vol_str, align 8
  %d3 = getelementptr inbounds nuw %struct.S, ptr %7, i32 0, i32 3
  call void @llvm.prefetch.p0(ptr %d3, i32 0, i32 0, i32 1)
  %8 = load volatile ptr, ptr @vol_ptr_vol_str, align 8
  %d4 = getelementptr inbounds nuw %struct.S, ptr %8, i32 0, i32 3
  call void @llvm.prefetch.p0(ptr %d4, i32 0, i32 0, i32 1)
  %9 = load volatile ptr, ptr getelementptr inbounds nuw (%struct.S, ptr @vol_str, i32 0, i32 4), align 8
  call void @llvm.prefetch.p0(ptr %9, i32 0, i32 0, i32 1)
  %10 = load volatile ptr, ptr @vol_ptr_str, align 8
  %next = getelementptr inbounds nuw %struct.S, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %next, align 8
  call void @llvm.prefetch.p0(ptr %11, i32 0, i32 0, i32 1)
  %12 = load ptr, ptr @ptr_vol_str, align 8
  %next5 = getelementptr inbounds nuw %struct.S, ptr %12, i32 0, i32 4
  %13 = load volatile ptr, ptr %next5, align 8
  call void @llvm.prefetch.p0(ptr %13, i32 0, i32 0, i32 1)
  %14 = load volatile ptr, ptr @vol_ptr_vol_str, align 8
  %next6 = getelementptr inbounds nuw %struct.S, ptr %14, i32 0, i32 4
  %15 = load volatile ptr, ptr %next6, align 8
  call void @llvm.prefetch.p0(ptr %15, i32 0, i32 0, i32 1)
  %16 = load volatile ptr, ptr getelementptr inbounds nuw (%struct.S, ptr @vol_str, i32 0, i32 4), align 8
  %d7 = getelementptr inbounds nuw %struct.S, ptr %16, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8 x i8], ptr %d7, i64 0, i64 0
  call void @llvm.prefetch.p0(ptr %arraydecay, i32 0, i32 0, i32 1)
  %17 = load volatile ptr, ptr @vol_ptr_str, align 8
  %next8 = getelementptr inbounds nuw %struct.S, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %next8, align 8
  %d9 = getelementptr inbounds nuw %struct.S, ptr %18, i32 0, i32 3
  %arraydecay10 = getelementptr inbounds [8 x i8], ptr %d9, i64 0, i64 0
  call void @llvm.prefetch.p0(ptr %arraydecay10, i32 0, i32 0, i32 1)
  %19 = load ptr, ptr @ptr_vol_str, align 8
  %next11 = getelementptr inbounds nuw %struct.S, ptr %19, i32 0, i32 4
  %20 = load volatile ptr, ptr %next11, align 8
  %d12 = getelementptr inbounds nuw %struct.S, ptr %20, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [8 x i8], ptr %d12, i64 0, i64 0
  call void @llvm.prefetch.p0(ptr %arraydecay13, i32 0, i32 0, i32 1)
  %21 = load volatile ptr, ptr @vol_ptr_vol_str, align 8
  %next14 = getelementptr inbounds nuw %struct.S, ptr %21, i32 0, i32 4
  %22 = load volatile ptr, ptr %next14, align 8
  %d15 = getelementptr inbounds nuw %struct.S, ptr %22, i32 0, i32 3
  %arraydecay16 = getelementptr inbounds [8 x i8], ptr %d15, i64 0, i64 0
  call void @llvm.prefetch.p0(ptr %arraydecay16, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr @glob_vol_int_arr, i32 0, i32 0, i32 1)
  %23 = load volatile ptr, ptr @glob_vol_ptr_int, align 8
  call void @llvm.prefetch.p0(ptr %23, i32 0, i32 0, i32 1)
  %24 = load ptr, ptr @glob_ptr_vol_int, align 8
  call void @llvm.prefetch.p0(ptr %24, i32 0, i32 0, i32 1)
  %25 = load volatile ptr, ptr @glob_vol_ptr_vol_int, align 8
  call void @llvm.prefetch.p0(ptr %25, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr getelementptr inbounds ([100 x i32], ptr @glob_vol_int_arr, i64 0, i64 2), i32 0, i32 0, i32 1)
  %26 = load volatile ptr, ptr @glob_vol_ptr_int, align 8
  %arrayidx = getelementptr inbounds i32, ptr %26, i64 3
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %27 = load ptr, ptr @glob_ptr_vol_int, align 8
  %arrayidx17 = getelementptr inbounds i32, ptr %27, i64 3
  call void @llvm.prefetch.p0(ptr %arrayidx17, i32 0, i32 0, i32 1)
  %28 = load volatile ptr, ptr @glob_vol_ptr_vol_int, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %28, i64 3
  call void @llvm.prefetch.p0(ptr %arrayidx18, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr getelementptr inbounds (i32, ptr @glob_vol_int_arr, i64 3), i32 0, i32 0, i32 1)
  %29 = load volatile i32, ptr @glob_vol_int, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i32, ptr @glob_vol_int_arr, i64 %idx.ext
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 0, i32 0, i32 1)
  %30 = load volatile ptr, ptr @glob_vol_ptr_int, align 8
  %add.ptr19 = getelementptr inbounds i32, ptr %30, i64 5
  call void @llvm.prefetch.p0(ptr %add.ptr19, i32 0, i32 0, i32 1)
  %31 = load ptr, ptr @glob_ptr_vol_int, align 8
  %add.ptr20 = getelementptr inbounds i32, ptr %31, i64 5
  call void @llvm.prefetch.p0(ptr %add.ptr20, i32 0, i32 0, i32 1)
  %32 = load volatile ptr, ptr @glob_vol_ptr_vol_int, align 8
  %add.ptr21 = getelementptr inbounds i32, ptr %32, i64 5
  call void @llvm.prefetch.p0(ptr %add.ptr21, i32 0, i32 0, i32 1)
  %33 = load volatile ptr, ptr @glob_vol_ptr_int, align 8
  %34 = load volatile i32, ptr @glob_vol_int, align 4
  %idx.ext22 = sext i32 %34 to i64
  %add.ptr23 = getelementptr inbounds i32, ptr %33, i64 %idx.ext22
  call void @llvm.prefetch.p0(ptr %add.ptr23, i32 0, i32 0, i32 1)
  %35 = load ptr, ptr @glob_ptr_vol_int, align 8
  %36 = load volatile i32, ptr @glob_vol_int, align 4
  %idx.ext24 = sext i32 %36 to i64
  %add.ptr25 = getelementptr inbounds i32, ptr %35, i64 %idx.ext24
  call void @llvm.prefetch.p0(ptr %add.ptr25, i32 0, i32 0, i32 1)
  %37 = load volatile ptr, ptr @glob_vol_ptr_vol_int, align 8
  %38 = load volatile i32, ptr @glob_vol_int, align 4
  %idx.ext26 = sext i32 %38 to i64
  %add.ptr27 = getelementptr inbounds i32, ptr %37, i64 %idx.ext26
  call void @llvm.prefetch.p0(ptr %add.ptr27, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @simple_vol_global()
  call void @simple_vol_file()
  store ptr @str, ptr getelementptr inbounds nuw (%struct.S, ptr @str, i32 0, i32 4), align 8
  store volatile ptr @str, ptr getelementptr inbounds nuw (%struct.S, ptr @vol_str, i32 0, i32 4), align 8
  call void @expr_vol_global()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
