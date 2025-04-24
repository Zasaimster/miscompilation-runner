; 169717127443651417504618703332606143006
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169717127443651417504618703332606143006.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169717127443651417504618703332606143006.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RenderBox = type { [6 x i32], i16, i16, ptr }
%struct.RenderStyle = type { %struct.NonInheritedFlags }
%struct.NonInheritedFlags = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32 }

@false = dso_local constant i8 0, align 1
@true = dso_local constant i8 1, align 1
@g_this = dso_local global %struct.RenderBox zeroinitializer, align 8
@g__style = dso_local global %struct.RenderStyle zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @RenderBox_setStyle(ptr noundef %thisin, ptr noundef %_style) #0 {
entry:
  %thisin.addr = alloca ptr, align 8
  %_style.addr = alloca ptr, align 8
  %this = alloca ptr, align 8
  %oldpos = alloca i8, align 1
  %tmp = alloca i8, align 1
  %tmppo = alloca i32, align 4
  %ltrue = alloca i8, align 1
  %tmpf = alloca i32, align 4
  %tmpp = alloca i32, align 4
  %ltrue11 = alloca i8, align 1
  %lfalse = alloca i8, align 1
  %ltrue34 = alloca i8, align 1
  %ltrue48 = alloca i8, align 1
  store ptr %thisin, ptr %thisin.addr, align 8
  store ptr %_style, ptr %_style.addr, align 8
  %0 = load ptr, ptr %thisin.addr, align 8
  store ptr %0, ptr %this, align 8
  %1 = load ptr, ptr %this, align 8
  %m_positioned = getelementptr inbounds nuw %struct.RenderBox, ptr %1, i32 0, i32 2
  %bf.load = load i16, ptr %m_positioned, align 2
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = trunc i16 %bf.clear to i1
  %storedv = zext i1 %bf.cast to i8
  store i8 %storedv, ptr %tmp, align 1
  %call = call i32 (i32, ...) @example6(i32 noundef 0)
  %2 = load i8, ptr %tmp, align 1
  %loadedv = trunc i8 %2 to i1
  %storedv1 = zext i1 %loadedv to i8
  store i8 %storedv1, ptr %oldpos, align 1
  %3 = load ptr, ptr %this, align 8
  %4 = load ptr, ptr %_style.addr, align 8
  call void @RenderObject_setStyle(ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr %_style.addr, align 8
  %noninherited_flags = getelementptr inbounds nuw %struct.RenderStyle, ptr %5, i32 0, i32 0
  %6 = getelementptr inbounds nuw %struct.NonInheritedFlags, ptr %noninherited_flags, i32 0, i32 0
  %bf.load2 = load i32, ptr %6, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 17
  %bf.clear4 = and i32 %bf.lshr3, 3
  store i32 %bf.clear4, ptr %tmppo, align 4
  %7 = load i32, ptr %tmppo, align 4
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i8 1, ptr %ltrue, align 1
  %8 = load i8, ptr %ltrue, align 1
  %loadedv5 = trunc i8 %8 to i1
  %9 = load ptr, ptr %this, align 8
  %m_positioned6 = getelementptr inbounds nuw %struct.RenderBox, ptr %9, i32 0, i32 2
  %10 = zext i1 %loadedv5 to i16
  %bf.load7 = load i16, ptr %m_positioned6, align 2
  %bf.shl = shl i16 %10, 4
  %bf.clear8 = and i16 %bf.load7, -17
  %bf.set = or i16 %bf.clear8, %bf.shl
  store i16 %bf.set, ptr %m_positioned6, align 2
  %bf.result.cast = trunc i16 %10 to i8
  %loadedv9 = trunc i8 %bf.result.cast to i1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %11 = load i8, ptr %oldpos, align 1
  %loadedv10 = trunc i8 %11 to i1
  br i1 %loadedv10, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i8 1, ptr %ltrue11, align 1
  %12 = load i8, ptr %ltrue11, align 1
  %loadedv12 = trunc i8 %12 to i1
  %13 = load ptr, ptr %this, align 8
  %m_positioned13 = getelementptr inbounds nuw %struct.RenderBox, ptr %13, i32 0, i32 2
  %14 = zext i1 %loadedv12 to i16
  %bf.load14 = load i16, ptr %m_positioned13, align 2
  %bf.shl15 = shl i16 %14, 4
  %bf.clear16 = and i16 %bf.load14, -17
  %bf.set17 = or i16 %bf.clear16, %bf.shl15
  store i16 %bf.set17, ptr %m_positioned13, align 2
  %bf.result.cast18 = trunc i16 %14 to i8
  %loadedv19 = trunc i8 %bf.result.cast18 to i1
  %15 = load ptr, ptr %this, align 8
  call void @removeFromSpecialObjects(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  store i8 0, ptr %lfalse, align 1
  %16 = load i8, ptr %lfalse, align 1
  %loadedv20 = trunc i8 %16 to i1
  %17 = load ptr, ptr %this, align 8
  %m_positioned21 = getelementptr inbounds nuw %struct.RenderBox, ptr %17, i32 0, i32 2
  %18 = zext i1 %loadedv20 to i16
  %bf.load22 = load i16, ptr %m_positioned21, align 2
  %bf.shl23 = shl i16 %18, 4
  %bf.clear24 = and i16 %bf.load22, -17
  %bf.set25 = or i16 %bf.clear24, %bf.shl23
  store i16 %bf.set25, ptr %m_positioned21, align 2
  %bf.result.cast26 = trunc i16 %18 to i8
  %loadedv27 = trunc i8 %bf.result.cast26 to i1
  %19 = load ptr, ptr %_style.addr, align 8
  %noninherited_flags28 = getelementptr inbounds nuw %struct.RenderStyle, ptr %19, i32 0, i32 0
  %20 = getelementptr inbounds nuw %struct.NonInheritedFlags, ptr %noninherited_flags28, i32 0, i32 0
  %bf.load29 = load i32, ptr %20, align 4
  %bf.lshr30 = lshr i32 %bf.load29, 19
  %bf.clear31 = and i32 %bf.lshr30, 3
  store i32 %bf.clear31, ptr %tmpf, align 4
  %21 = load ptr, ptr %this, align 8
  %isTableCell = getelementptr inbounds nuw %struct.RenderBox, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %isTableCell, align 8
  %23 = load ptr, ptr %this, align 8
  %call32 = call zeroext i1 %22(ptr noundef %23)
  br i1 %call32, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %24 = load i32, ptr %tmpf, align 4
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %if.else, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  store i8 1, ptr %ltrue34, align 1
  %25 = load i8, ptr %ltrue34, align 1
  %loadedv35 = trunc i8 %25 to i1
  %26 = load ptr, ptr %this, align 8
  %m_floating = getelementptr inbounds nuw %struct.RenderBox, ptr %26, i32 0, i32 2
  %27 = zext i1 %loadedv35 to i16
  %bf.load36 = load i16, ptr %m_floating, align 2
  %bf.shl37 = shl i16 %27, 3
  %bf.clear38 = and i16 %bf.load36, -9
  %bf.set39 = or i16 %bf.clear38, %bf.shl37
  store i16 %bf.set39, ptr %m_floating, align 2
  %bf.result.cast40 = trunc i16 %27 to i8
  %loadedv41 = trunc i8 %bf.result.cast40 to i1
  br label %if.end57

if.else:                                          ; preds = %land.lhs.true, %if.end
  %28 = load ptr, ptr %_style.addr, align 8
  %noninherited_flags42 = getelementptr inbounds nuw %struct.RenderStyle, ptr %28, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.NonInheritedFlags, ptr %noninherited_flags42, i32 0, i32 0
  %bf.load43 = load i32, ptr %29, align 4
  %bf.lshr44 = lshr i32 %bf.load43, 17
  %bf.clear45 = and i32 %bf.lshr44, 3
  store i32 %bf.clear45, ptr %tmpp, align 4
  %30 = load i32, ptr %tmpp, align 4
  %cmp46 = icmp eq i32 %30, 1
  br i1 %cmp46, label %if.then47, label %if.end56

if.then47:                                        ; preds = %if.else
  store i8 1, ptr %ltrue48, align 1
  %31 = load i8, ptr %ltrue48, align 1
  %loadedv49 = trunc i8 %31 to i1
  %32 = load ptr, ptr %this, align 8
  %m_relPositioned = getelementptr inbounds nuw %struct.RenderBox, ptr %32, i32 0, i32 2
  %33 = zext i1 %loadedv49 to i16
  %bf.load50 = load i16, ptr %m_relPositioned, align 2
  %bf.shl51 = shl i16 %33, 6
  %bf.clear52 = and i16 %bf.load50, -65
  %bf.set53 = or i16 %bf.clear52, %bf.shl51
  store i16 %bf.set53, ptr %m_relPositioned, align 2
  %bf.result.cast54 = trunc i16 %33 to i8
  %loadedv55 = trunc i8 %bf.result.cast54 to i1
  br label %if.end56

if.end56:                                         ; preds = %if.then47, %if.else
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then33
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end57, %sw.bb
  ret void
}

declare i32 @example6(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @RenderObject_setStyle(ptr noundef %this, ptr noundef %_style) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %_style.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %_style, ptr %_style.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = load ptr, ptr %_style.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @removeFromSpecialObjects(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @RenderBox_isTableCell(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  ret i1 false
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %bf.load = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.clear = and i16 %bf.load, -65
  %bf.set = or i16 %bf.clear, 0
  store i16 %bf.set, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.load1 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.clear2 = and i16 %bf.load1, -17
  %bf.set3 = or i16 %bf.clear2, 0
  store i16 %bf.set3, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.load4 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.clear5 = and i16 %bf.load4, -9
  %bf.set6 = or i16 %bf.clear5, 0
  store i16 %bf.set6, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  store ptr @RenderBox_isTableCell, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 3), align 8
  %bf.load7 = load i32, ptr @g__style, align 4
  %bf.clear8 = and i32 %bf.load7, -393217
  %bf.set9 = or i32 %bf.clear8, 393216
  store i32 %bf.set9, ptr @g__style, align 4
  %bf.load10 = load i32, ptr @g__style, align 4
  %bf.clear11 = and i32 %bf.load10, -1572865
  %bf.set12 = or i32 %bf.clear11, 0
  store i32 %bf.set12, ptr @g__style, align 4
  call void @RenderBox_setStyle(ptr noundef @g_this, ptr noundef @g__style)
  %bf.load13 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.lshr = lshr i16 %bf.load13, 4
  %bf.clear14 = and i16 %bf.lshr, 1
  %bf.cast = trunc i16 %bf.clear14 to i1
  %conv = zext i1 %bf.cast to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %bf.load16 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.lshr17 = lshr i16 %bf.load16, 6
  %bf.clear18 = and i16 %bf.lshr17, 1
  %bf.cast19 = trunc i16 %bf.clear18 to i1
  %conv20 = zext i1 %bf.cast19 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end
  call void @abort() #4
  unreachable

if.end24:                                         ; preds = %if.end
  %bf.load25 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.lshr26 = lshr i16 %bf.load25, 3
  %bf.clear27 = and i16 %bf.lshr26, 1
  %bf.cast28 = trunc i16 %bf.clear27 to i1
  %conv29 = zext i1 %bf.cast28 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end24
  call void @abort() #4
  unreachable

if.end33:                                         ; preds = %if.end24
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
