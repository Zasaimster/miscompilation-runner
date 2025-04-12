; 158889533132215505522579739426475244668
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/158889533132215505522579739426475244668.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/158889533132215505522579739426475244668.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i16, i16, [8 x i8], ptr }

@glob_int_arr = dso_local global [100 x i32] zeroinitializer, align 16
@glob_ptr_int = dso_local global ptr @glob_int_arr, align 8
@glob_int = dso_local global i32 4, align 4
@str = dso_local global %struct.S zeroinitializer, align 8
@ptr_str = dso_local global ptr @str, align 8
@stat_int_arr = internal global [100 x i32] zeroinitializer, align 16
@stat_ptr_int = internal global ptr @stat_int_arr, align 8
@stat_int = internal global i32 0, align 4
@simple_static_local.gx = internal global [100 x i32] zeroinitializer, align 16
@simple_static_local.hx = internal global ptr @simple_static_local.gx, align 8
@simple_static_local.ix = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_global() #0 {
entry:
  call void @llvm.prefetch.p0(ptr @glob_int_arr, i32 0, i32 0, i32 1)
  %0 = load ptr, ptr @glob_ptr_int, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr @glob_int, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @square(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_file() #0 {
entry:
  call void @llvm.prefetch.p0(ptr @stat_int_arr, i32 0, i32 0, i32 1)
  %0 = load ptr, ptr @stat_ptr_int, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr @stat_int, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_static_local() #0 {
entry:
  call void @llvm.prefetch.p0(ptr @simple_static_local.gx, i32 0, i32 0, i32 1)
  %0 = load ptr, ptr @simple_static_local.hx, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr @simple_static_local.ix, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_local() #0 {
entry:
  %gx = alloca [100 x i32], align 16
  %hx = alloca ptr, align 8
  %ix = alloca i32, align 4
  %arraydecay = getelementptr inbounds [100 x i32], ptr %gx, i64 0, i64 0
  store ptr %arraydecay, ptr %hx, align 8
  %arraydecay1 = getelementptr inbounds [100 x i32], ptr %gx, i64 0, i64 0
  call void @llvm.prefetch.p0(ptr %arraydecay1, i32 0, i32 0, i32 1)
  %0 = load ptr, ptr %hx, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr %ix, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_arg(ptr noundef %g, ptr noundef %h, i32 noundef %i) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8
  store ptr %h, ptr %h.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %g.addr, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %1 = load ptr, ptr %h.addr, align 8
  call void @llvm.prefetch.p0(ptr %1, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr %i.addr, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expr_global() #0 {
entry:
  call void @llvm.prefetch.p0(ptr @str, i32 0, i32 0, i32 1)
  %0 = load ptr, ptr @ptr_str, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr getelementptr inbounds nuw (%struct.S, ptr @str, i32 0, i32 1), i32 0, i32 0, i32 1)
  %1 = load ptr, ptr @ptr_str, align 8
  %b = getelementptr inbounds nuw %struct.S, ptr %1, i32 0, i32 1
  call void @llvm.prefetch.p0(ptr %b, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr getelementptr inbounds nuw (%struct.S, ptr @str, i32 0, i32 3), i32 0, i32 0, i32 1)
  %2 = load ptr, ptr @ptr_str, align 8
  %d = getelementptr inbounds nuw %struct.S, ptr %2, i32 0, i32 3
  call void @llvm.prefetch.p0(ptr %d, i32 0, i32 0, i32 1)
  %3 = load ptr, ptr getelementptr inbounds nuw (%struct.S, ptr @str, i32 0, i32 4), align 8
  call void @llvm.prefetch.p0(ptr %3, i32 0, i32 0, i32 1)
  %4 = load ptr, ptr @ptr_str, align 8
  %next = getelementptr inbounds nuw %struct.S, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %next, align 8
  call void @llvm.prefetch.p0(ptr %5, i32 0, i32 0, i32 1)
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.S, ptr @str, i32 0, i32 4), align 8
  %d1 = getelementptr inbounds nuw %struct.S, ptr %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8 x i8], ptr %d1, i64 0, i64 0
  call void @llvm.prefetch.p0(ptr %arraydecay, i32 0, i32 0, i32 1)
  %7 = load ptr, ptr @ptr_str, align 8
  %next2 = getelementptr inbounds nuw %struct.S, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %next2, align 8
  %d3 = getelementptr inbounds nuw %struct.S, ptr %8, i32 0, i32 3
  %arraydecay4 = getelementptr inbounds [8 x i8], ptr %d3, i64 0, i64 0
  call void @llvm.prefetch.p0(ptr %arraydecay4, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr @glob_int_arr, i32 0, i32 0, i32 1)
  %9 = load ptr, ptr @glob_ptr_int, align 8
  call void @llvm.prefetch.p0(ptr %9, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr getelementptr inbounds ([100 x i32], ptr @glob_int_arr, i64 0, i64 2), i32 0, i32 0, i32 1)
  %10 = load ptr, ptr @glob_ptr_int, align 8
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 3
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr getelementptr inbounds (i32, ptr @glob_int_arr, i64 3), i32 0, i32 0, i32 1)
  %11 = load i32, ptr @glob_int, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i32, ptr @glob_int_arr, i64 %idx.ext
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 0, i32 0, i32 1)
  %12 = load ptr, ptr @glob_ptr_int, align 8
  %add.ptr5 = getelementptr inbounds i32, ptr %12, i64 5
  call void @llvm.prefetch.p0(ptr %add.ptr5, i32 0, i32 0, i32 1)
  %13 = load ptr, ptr @glob_ptr_int, align 8
  %14 = load i32, ptr @glob_int, align 4
  %idx.ext6 = sext i32 %14 to i64
  %add.ptr7 = getelementptr inbounds i32, ptr %13, i64 %idx.ext6
  call void @llvm.prefetch.p0(ptr %add.ptr7, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expr_local() #0 {
entry:
  %b = alloca [10 x i32], align 16
  %pb = alloca ptr, align 8
  %t = alloca %struct.S, align 8
  %pt = alloca ptr, align 8
  %j = alloca i32, align 4
  %arraydecay = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 0
  store ptr %arraydecay, ptr %pb, align 8
  store ptr %t, ptr %pt, align 8
  store i32 4, ptr %j, align 4
  call void @llvm.prefetch.p0(ptr %t, i32 0, i32 0, i32 1)
  %0 = load ptr, ptr %pt, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %b1 = getelementptr inbounds nuw %struct.S, ptr %t, i32 0, i32 1
  call void @llvm.prefetch.p0(ptr %b1, i32 0, i32 0, i32 1)
  %1 = load ptr, ptr %pt, align 8
  %b2 = getelementptr inbounds nuw %struct.S, ptr %1, i32 0, i32 1
  call void @llvm.prefetch.p0(ptr %b2, i32 0, i32 0, i32 1)
  %d = getelementptr inbounds nuw %struct.S, ptr %t, i32 0, i32 3
  call void @llvm.prefetch.p0(ptr %d, i32 0, i32 0, i32 1)
  %2 = load ptr, ptr %pt, align 8
  %d3 = getelementptr inbounds nuw %struct.S, ptr %2, i32 0, i32 3
  call void @llvm.prefetch.p0(ptr %d3, i32 0, i32 0, i32 1)
  %next = getelementptr inbounds nuw %struct.S, ptr %t, i32 0, i32 4
  %3 = load ptr, ptr %next, align 8
  call void @llvm.prefetch.p0(ptr %3, i32 0, i32 0, i32 1)
  %4 = load ptr, ptr %pt, align 8
  %next4 = getelementptr inbounds nuw %struct.S, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %next4, align 8
  call void @llvm.prefetch.p0(ptr %5, i32 0, i32 0, i32 1)
  %next5 = getelementptr inbounds nuw %struct.S, ptr %t, i32 0, i32 4
  %6 = load ptr, ptr %next5, align 8
  %d6 = getelementptr inbounds nuw %struct.S, ptr %6, i32 0, i32 3
  %arraydecay7 = getelementptr inbounds [8 x i8], ptr %d6, i64 0, i64 0
  call void @llvm.prefetch.p0(ptr %arraydecay7, i32 0, i32 0, i32 1)
  %7 = load ptr, ptr %pt, align 8
  %next8 = getelementptr inbounds nuw %struct.S, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %next8, align 8
  %d9 = getelementptr inbounds nuw %struct.S, ptr %8, i32 0, i32 3
  %arraydecay10 = getelementptr inbounds [8 x i8], ptr %d9, i64 0, i64 0
  call void @llvm.prefetch.p0(ptr %arraydecay10, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr %b, i32 0, i32 0, i32 1)
  %9 = load ptr, ptr %pb, align 8
  call void @llvm.prefetch.p0(ptr %9, i32 0, i32 0, i32 1)
  %arrayidx = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 2
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %10 = load ptr, ptr %pb, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %10, i64 3
  call void @llvm.prefetch.p0(ptr %arrayidx11, i32 0, i32 0, i32 1)
  %arraydecay12 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, ptr %arraydecay12, i64 3
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 0, i32 0, i32 1)
  %arraydecay13 = getelementptr inbounds [10 x i32], ptr %b, i64 0, i64 0
  %11 = load i32, ptr %j, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr14 = getelementptr inbounds i32, ptr %arraydecay13, i64 %idx.ext
  call void @llvm.prefetch.p0(ptr %add.ptr14, i32 0, i32 0, i32 1)
  %12 = load ptr, ptr %pb, align 8
  %add.ptr15 = getelementptr inbounds i32, ptr %12, i64 5
  call void @llvm.prefetch.p0(ptr %add.ptr15, i32 0, i32 0, i32 1)
  %13 = load ptr, ptr %pb, align 8
  %14 = load i32, ptr %j, align 4
  %idx.ext16 = sext i32 %14 to i64
  %add.ptr17 = getelementptr inbounds i32, ptr %13, i64 %idx.ext16
  call void @llvm.prefetch.p0(ptr %add.ptr17, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @simple_global()
  call void @simple_file()
  call void @simple_static_local()
  call void @simple_local()
  %0 = load ptr, ptr @glob_ptr_int, align 8
  %1 = load i32, ptr @glob_int, align 4
  call void @simple_arg(ptr noundef @glob_int_arr, ptr noundef %0, i32 noundef %1)
  store ptr @str, ptr getelementptr inbounds nuw (%struct.S, ptr @str, i32 0, i32 4), align 8
  call void @expr_global()
  call void @expr_local()
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
