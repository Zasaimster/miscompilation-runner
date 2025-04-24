; 167886664235032848791985017298399819805
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167886664235032848791985017298399819805.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167886664235032848791985017298399819805.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WorkEntrySType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ShrPcPteSType = type { %struct.ShrPcStatsSType }
%struct.ShrPcStatsSType = type { i32, i32, %struct.ShrPcCommonStatSType, %union.ShrPcStatUnion }
%struct.ShrPcCommonStatSType = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.ShrPcStatUnion = type { %struct.ShrPcGemStatSType }
%struct.ShrPcGemStatSType = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [40 x i64] }

@Local1 = dso_local global ptr null, align 8
@Local2 = dso_local global ptr null, align 8
@Local3 = dso_local global ptr null, align 8
@RDbf1 = dso_local global ptr null, align 8
@RDbf2 = dso_local global ptr null, align 8
@RDbf3 = dso_local global ptr null, align 8
@IntVc1 = dso_local global ptr null, align 8
@IntVc2 = dso_local global ptr null, align 8
@IntCode3 = dso_local global ptr null, align 8
@IntCode4 = dso_local global ptr null, align 8
@IntCode5 = dso_local global ptr null, align 8
@IntCode6 = dso_local global ptr null, align 8
@Lom1 = dso_local global ptr null, align 8
@Lom2 = dso_local global ptr null, align 8
@Lom3 = dso_local global ptr null, align 8
@Lom4 = dso_local global ptr null, align 8
@Lom5 = dso_local global ptr null, align 8
@Lom6 = dso_local global ptr null, align 8
@Lom7 = dso_local global ptr null, align 8
@Lom8 = dso_local global ptr null, align 8
@Lom9 = dso_local global ptr null, align 8
@Lom10 = dso_local global ptr null, align 8
@RDbf11 = dso_local global ptr null, align 8
@RDbf12 = dso_local global ptr null, align 8
@Workspace = dso_local global %struct.WorkEntrySType zeroinitializer, align 8
@MyPte = dso_local global %struct.ShrPcPteSType zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitCache(i32 noundef %sessionId) #0 {
entry:
  %sessionId.addr = alloca i32, align 4
  store i32 %sessionId, ptr %sessionId.addr, align 4
  %0 = load i32, ptr %sessionId.addr, align 4
  %conv = sext i32 %0 to i64
  call void @initPte(ptr noundef null, i64 noundef %conv)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initPte(ptr noundef %shrpcPtr, i64 noundef %sessionId) #0 {
entry:
  %shrpcPtr.addr = alloca ptr, align 8
  %sessionId.addr = alloca i64, align 8
  %ptePtr = alloca ptr, align 8
  store ptr %shrpcPtr, ptr %shrpcPtr.addr, align 8
  store i64 %sessionId, ptr %sessionId.addr, align 8
  store ptr @MyPte, ptr %ptePtr, align 8
  %0 = load ptr, ptr %ptePtr, align 8
  %stats = getelementptr inbounds nuw %struct.ShrPcPteSType, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %sessionId.addr, align 8
  call void @setStatPointers(ptr noundef %stats, i64 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @InitCache(i32 noundef 5)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @setStatPointers(ptr noundef %statsPtr, i64 noundef %sessionId) #0 {
entry:
  %statsPtr.addr = alloca ptr, align 8
  %sessionId.addr = alloca i64, align 8
  %workSpPtr = alloca ptr, align 8
  store ptr %statsPtr, ptr %statsPtr.addr, align 8
  store i64 %sessionId, ptr %sessionId.addr, align 8
  %0 = load i64, ptr %sessionId.addr, align 8
  %conv = trunc i64 %0 to i32
  %1 = load ptr, ptr %statsPtr.addr, align 8
  %sessionId1 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %1, i32 0, i32 1
  store i32 %conv, ptr %sessionId1, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = load ptr, ptr %statsPtr.addr, align 8
  %cmn = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %2, i32 0, i32 2
  %a1 = getelementptr inbounds nuw %struct.ShrPcCommonStatSType, ptr %cmn, i32 0, i32 0
  store i64 0, ptr %a1, align 8
  %3 = load ptr, ptr %statsPtr.addr, align 8
  %cmn2 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %3, i32 0, i32 2
  %n1 = getelementptr inbounds nuw %struct.ShrPcCommonStatSType, ptr %cmn2, i32 0, i32 1
  store i64 5, ptr %n1, align 8
  %4 = load ptr, ptr %statsPtr.addr, align 8
  %cmn3 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %4, i32 0, i32 2
  %local1 = getelementptr inbounds nuw %struct.ShrPcCommonStatSType, ptr %cmn3, i32 0, i32 2
  store ptr %local1, ptr @Local1, align 8
  %5 = load ptr, ptr %statsPtr.addr, align 8
  %cmn4 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %5, i32 0, i32 2
  %local2 = getelementptr inbounds nuw %struct.ShrPcCommonStatSType, ptr %cmn4, i32 0, i32 3
  store ptr %local2, ptr @Local2, align 8
  %6 = load ptr, ptr %statsPtr.addr, align 8
  %cmn5 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %6, i32 0, i32 2
  %local3 = getelementptr inbounds nuw %struct.ShrPcCommonStatSType, ptr %cmn5, i32 0, i32 4
  store ptr %local3, ptr @Local3, align 8
  %7 = load ptr, ptr %statsPtr.addr, align 8
  %cmn6 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %7, i32 0, i32 2
  %rdbf1 = getelementptr inbounds nuw %struct.ShrPcCommonStatSType, ptr %cmn6, i32 0, i32 5
  store ptr %rdbf1, ptr @RDbf1, align 8
  %8 = load ptr, ptr %statsPtr.addr, align 8
  %cmn7 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %8, i32 0, i32 2
  %rdbf2 = getelementptr inbounds nuw %struct.ShrPcCommonStatSType, ptr %cmn7, i32 0, i32 6
  store ptr %rdbf2, ptr @RDbf2, align 8
  %9 = load ptr, ptr %statsPtr.addr, align 8
  %cmn8 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %9, i32 0, i32 2
  %milli = getelementptr inbounds nuw %struct.ShrPcCommonStatSType, ptr %cmn8, i32 0, i32 7
  store ptr %milli, ptr @RDbf3, align 8
  %10 = load ptr, ptr @RDbf3, align 8
  store i64 1, ptr %10, align 8
  %11 = load ptr, ptr %statsPtr.addr, align 8
  %u = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %11, i32 0, i32 3
  %a19 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u, i32 0, i32 12
  store ptr %a19, ptr @IntVc1, align 8
  %12 = load ptr, ptr %statsPtr.addr, align 8
  %u10 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %12, i32 0, i32 3
  %a2 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u10, i32 0, i32 13
  store ptr %a2, ptr @IntVc2, align 8
  %13 = load ptr, ptr %statsPtr.addr, align 8
  %u11 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %13, i32 0, i32 3
  %a3 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u11, i32 0, i32 14
  store ptr %a3, ptr @IntCode3, align 8
  %14 = load ptr, ptr %statsPtr.addr, align 8
  %u12 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %14, i32 0, i32 3
  %a4 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u12, i32 0, i32 15
  store ptr %a4, ptr @IntCode4, align 8
  %15 = load ptr, ptr %statsPtr.addr, align 8
  %u13 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %15, i32 0, i32 3
  %a5 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u13, i32 0, i32 16
  store ptr %a5, ptr @IntCode5, align 8
  %16 = load ptr, ptr %statsPtr.addr, align 8
  %u14 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %16, i32 0, i32 3
  %a6 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u14, i32 0, i32 17
  store ptr %a6, ptr @IntCode6, align 8
  store ptr @Workspace, ptr %workSpPtr, align 8
  %17 = load ptr, ptr %statsPtr.addr, align 8
  %u15 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %17, i32 0, i32 3
  %a7 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u15, i32 0, i32 18
  %18 = load ptr, ptr %workSpPtr, align 8
  %p1 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %18, i32 0, i32 0
  store ptr %a7, ptr %p1, align 8
  %19 = load ptr, ptr %statsPtr.addr, align 8
  %u16 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %19, i32 0, i32 3
  %a8 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u16, i32 0, i32 19
  %20 = load ptr, ptr %workSpPtr, align 8
  %p2 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %20, i32 0, i32 1
  store ptr %a8, ptr %p2, align 8
  %21 = load ptr, ptr %statsPtr.addr, align 8
  %u17 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %21, i32 0, i32 3
  %a9 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u17, i32 0, i32 20
  %22 = load ptr, ptr %workSpPtr, align 8
  %p3 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %22, i32 0, i32 2
  store ptr %a9, ptr %p3, align 8
  %23 = load ptr, ptr %statsPtr.addr, align 8
  %u18 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %23, i32 0, i32 3
  %a10 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u18, i32 0, i32 21
  %24 = load ptr, ptr %workSpPtr, align 8
  %p4 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %24, i32 0, i32 3
  store ptr %a10, ptr %p4, align 8
  %25 = load ptr, ptr %statsPtr.addr, align 8
  %u19 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %25, i32 0, i32 3
  %a11 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u19, i32 0, i32 22
  %26 = load ptr, ptr %workSpPtr, align 8
  %p5 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %26, i32 0, i32 4
  store ptr %a11, ptr %p5, align 8
  %27 = load ptr, ptr %statsPtr.addr, align 8
  %u20 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %27, i32 0, i32 3
  %a12 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u20, i32 0, i32 23
  %28 = load ptr, ptr %workSpPtr, align 8
  %p6 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %28, i32 0, i32 5
  store ptr %a12, ptr %p6, align 8
  %29 = load ptr, ptr %statsPtr.addr, align 8
  %u21 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %29, i32 0, i32 3
  %a13 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u21, i32 0, i32 24
  %30 = load ptr, ptr %workSpPtr, align 8
  %p7 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %30, i32 0, i32 6
  store ptr %a13, ptr %p7, align 8
  %31 = load ptr, ptr %statsPtr.addr, align 8
  %u22 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %31, i32 0, i32 3
  %a14 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u22, i32 0, i32 25
  %32 = load ptr, ptr %workSpPtr, align 8
  %p8 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %32, i32 0, i32 7
  store ptr %a14, ptr %p8, align 8
  %33 = load ptr, ptr %statsPtr.addr, align 8
  %u23 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %33, i32 0, i32 3
  %a15 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u23, i32 0, i32 26
  %34 = load ptr, ptr %workSpPtr, align 8
  %p9 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %34, i32 0, i32 8
  store ptr %a15, ptr %p9, align 8
  %35 = load ptr, ptr %statsPtr.addr, align 8
  %u24 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %35, i32 0, i32 3
  %a16 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u24, i32 0, i32 27
  %36 = load ptr, ptr %workSpPtr, align 8
  %p10 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %36, i32 0, i32 9
  store ptr %a16, ptr %p10, align 8
  %37 = load ptr, ptr %statsPtr.addr, align 8
  %u25 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %37, i32 0, i32 3
  %a17 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u25, i32 0, i32 28
  %38 = load ptr, ptr %workSpPtr, align 8
  %p11 = getelementptr inbounds nuw %struct.WorkEntrySType, ptr %38, i32 0, i32 10
  store ptr %a17, ptr %p11, align 8
  %39 = load ptr, ptr %statsPtr.addr, align 8
  %u26 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %39, i32 0, i32 3
  %c1 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u26, i32 0, i32 0
  store ptr %c1, ptr @Lom1, align 8
  %40 = load ptr, ptr %statsPtr.addr, align 8
  %u27 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %40, i32 0, i32 3
  %c2 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u27, i32 0, i32 1
  store ptr %c2, ptr @Lom2, align 8
  %41 = load ptr, ptr %statsPtr.addr, align 8
  %u28 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %41, i32 0, i32 3
  %c3 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u28, i32 0, i32 2
  store ptr %c3, ptr @Lom3, align 8
  %42 = load ptr, ptr %statsPtr.addr, align 8
  %u29 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %42, i32 0, i32 3
  %c4 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u29, i32 0, i32 3
  store ptr %c4, ptr @Lom4, align 8
  %43 = load ptr, ptr %statsPtr.addr, align 8
  %u30 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %43, i32 0, i32 3
  %c5 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u30, i32 0, i32 4
  store ptr %c5, ptr @Lom5, align 8
  %44 = load ptr, ptr %statsPtr.addr, align 8
  %u31 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %44, i32 0, i32 3
  %c6 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u31, i32 0, i32 5
  store ptr %c6, ptr @Lom6, align 8
  %45 = load ptr, ptr %statsPtr.addr, align 8
  %u32 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %45, i32 0, i32 3
  %c7 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u32, i32 0, i32 6
  store ptr %c7, ptr @Lom7, align 8
  %46 = load ptr, ptr %statsPtr.addr, align 8
  %u33 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %46, i32 0, i32 3
  %c8 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u33, i32 0, i32 7
  store ptr %c8, ptr @Lom8, align 8
  %47 = load ptr, ptr %statsPtr.addr, align 8
  %u34 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %47, i32 0, i32 3
  %c9 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u34, i32 0, i32 8
  store ptr %c9, ptr @Lom9, align 8
  %48 = load ptr, ptr %statsPtr.addr, align 8
  %u35 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %48, i32 0, i32 3
  %c10 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u35, i32 0, i32 9
  store ptr %c10, ptr @Lom10, align 8
  %49 = load ptr, ptr %statsPtr.addr, align 8
  %u36 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %49, i32 0, i32 3
  %c11 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u36, i32 0, i32 10
  store ptr %c11, ptr @RDbf11, align 8
  %50 = load ptr, ptr %statsPtr.addr, align 8
  %u37 = getelementptr inbounds nuw %struct.ShrPcStatsSType, ptr %50, i32 0, i32 3
  %c12 = getelementptr inbounds nuw %struct.ShrPcGemStatSType, ptr %u37, i32 0, i32 11
  store ptr %c12, ptr @RDbf12, align 8
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
