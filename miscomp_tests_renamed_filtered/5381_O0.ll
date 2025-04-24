; 19516067622546726385075841807515003856
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19516067622546726385075841807515003856.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19516067622546726385075841807515003856.c"
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
  %ltrue6 = alloca i8, align 1
  %lfalse = alloca i8, align 1
  %ltrue29 = alloca i8, align 1
  %ltrue43 = alloca i8, align 1
  store ptr %thisin, ptr %thisin.addr, align 8
  store ptr %_style, ptr %_style.addr, align 8
  %0 = load ptr, ptr %thisin.addr, align 8
  store ptr %0, ptr %this, align 8
  %call = call i32 (...) @uselessFunction()
  %1 = load i8, ptr %tmp, align 1
  %loadedv = trunc i8 %1 to i1
  %storedv = zext i1 %loadedv to i8
  store i8 %storedv, ptr %oldpos, align 1
  %2 = load ptr, ptr %this, align 8
  %3 = load ptr, ptr %_style.addr, align 8
  call void @RenderObject_setStyle(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %_style.addr, align 8
  %noninherited_flags = getelementptr inbounds nuw %struct.RenderStyle, ptr %4, i32 0, i32 0
  %5 = getelementptr inbounds nuw %struct.NonInheritedFlags, ptr %noninherited_flags, i32 0, i32 0
  %bf.load = load i32, ptr %5, align 4
  %bf.lshr = lshr i32 %bf.load, 17
  %bf.clear = and i32 %bf.lshr, 3
  store i32 %bf.clear, ptr %tmppo, align 4
  %6 = load i32, ptr %tmppo, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i8 1, ptr %ltrue, align 1
  %7 = load i8, ptr %ltrue, align 1
  %loadedv1 = trunc i8 %7 to i1
  %8 = load ptr, ptr %this, align 8
  %m_positioned = getelementptr inbounds nuw %struct.RenderBox, ptr %8, i32 0, i32 2
  %9 = zext i1 %loadedv1 to i16
  %bf.load2 = load i16, ptr %m_positioned, align 2
  %bf.shl = shl i16 %9, 4
  %bf.clear3 = and i16 %bf.load2, -17
  %bf.set = or i16 %bf.clear3, %bf.shl
  store i16 %bf.set, ptr %m_positioned, align 2
  %bf.result.cast = trunc i16 %9 to i8
  %loadedv4 = trunc i8 %bf.result.cast to i1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load i8, ptr %oldpos, align 1
  %loadedv5 = trunc i8 %10 to i1
  br i1 %loadedv5, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i8 1, ptr %ltrue6, align 1
  %11 = load i8, ptr %ltrue6, align 1
  %loadedv7 = trunc i8 %11 to i1
  %12 = load ptr, ptr %this, align 8
  %m_positioned8 = getelementptr inbounds nuw %struct.RenderBox, ptr %12, i32 0, i32 2
  %13 = zext i1 %loadedv7 to i16
  %bf.load9 = load i16, ptr %m_positioned8, align 2
  %bf.shl10 = shl i16 %13, 4
  %bf.clear11 = and i16 %bf.load9, -17
  %bf.set12 = or i16 %bf.clear11, %bf.shl10
  store i16 %bf.set12, ptr %m_positioned8, align 2
  %bf.result.cast13 = trunc i16 %13 to i8
  %loadedv14 = trunc i8 %bf.result.cast13 to i1
  %14 = load ptr, ptr %this, align 8
  call void @removeFromSpecialObjects(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  store i8 0, ptr %lfalse, align 1
  %15 = load i8, ptr %lfalse, align 1
  %loadedv15 = trunc i8 %15 to i1
  %16 = load ptr, ptr %this, align 8
  %m_positioned16 = getelementptr inbounds nuw %struct.RenderBox, ptr %16, i32 0, i32 2
  %17 = zext i1 %loadedv15 to i16
  %bf.load17 = load i16, ptr %m_positioned16, align 2
  %bf.shl18 = shl i16 %17, 4
  %bf.clear19 = and i16 %bf.load17, -17
  %bf.set20 = or i16 %bf.clear19, %bf.shl18
  store i16 %bf.set20, ptr %m_positioned16, align 2
  %bf.result.cast21 = trunc i16 %17 to i8
  %loadedv22 = trunc i8 %bf.result.cast21 to i1
  %18 = load ptr, ptr %_style.addr, align 8
  %noninherited_flags23 = getelementptr inbounds nuw %struct.RenderStyle, ptr %18, i32 0, i32 0
  %19 = getelementptr inbounds nuw %struct.NonInheritedFlags, ptr %noninherited_flags23, i32 0, i32 0
  %bf.load24 = load i32, ptr %19, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 19
  %bf.clear26 = and i32 %bf.lshr25, 3
  store i32 %bf.clear26, ptr %tmpf, align 4
  %20 = load ptr, ptr %this, align 8
  %isTableCell = getelementptr inbounds nuw %struct.RenderBox, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %isTableCell, align 8
  %22 = load ptr, ptr %this, align 8
  %call27 = call zeroext i1 %21(ptr noundef %22)
  br i1 %call27, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %23 = load i32, ptr %tmpf, align 4
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.else, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  store i8 1, ptr %ltrue29, align 1
  %24 = load i8, ptr %ltrue29, align 1
  %loadedv30 = trunc i8 %24 to i1
  %25 = load ptr, ptr %this, align 8
  %m_floating = getelementptr inbounds nuw %struct.RenderBox, ptr %25, i32 0, i32 2
  %26 = zext i1 %loadedv30 to i16
  %bf.load31 = load i16, ptr %m_floating, align 2
  %bf.shl32 = shl i16 %26, 3
  %bf.clear33 = and i16 %bf.load31, -9
  %bf.set34 = or i16 %bf.clear33, %bf.shl32
  store i16 %bf.set34, ptr %m_floating, align 2
  %bf.result.cast35 = trunc i16 %26 to i8
  %loadedv36 = trunc i8 %bf.result.cast35 to i1
  br label %if.end52

if.else:                                          ; preds = %land.lhs.true, %if.end
  %27 = load ptr, ptr %_style.addr, align 8
  %noninherited_flags37 = getelementptr inbounds nuw %struct.RenderStyle, ptr %27, i32 0, i32 0
  %28 = getelementptr inbounds nuw %struct.NonInheritedFlags, ptr %noninherited_flags37, i32 0, i32 0
  %bf.load38 = load i32, ptr %28, align 4
  %bf.lshr39 = lshr i32 %bf.load38, 17
  %bf.clear40 = and i32 %bf.lshr39, 3
  store i32 %bf.clear40, ptr %tmpp, align 4
  %29 = load i32, ptr %tmpp, align 4
  %cmp41 = icmp eq i32 %29, 1
  br i1 %cmp41, label %if.then42, label %if.end51

if.then42:                                        ; preds = %if.else
  store i8 1, ptr %ltrue43, align 1
  %30 = load i8, ptr %ltrue43, align 1
  %loadedv44 = trunc i8 %30 to i1
  %31 = load ptr, ptr %this, align 8
  %m_relPositioned = getelementptr inbounds nuw %struct.RenderBox, ptr %31, i32 0, i32 2
  %32 = zext i1 %loadedv44 to i16
  %bf.load45 = load i16, ptr %m_relPositioned, align 2
  %bf.shl46 = shl i16 %32, 6
  %bf.clear47 = and i16 %bf.load45, -65
  %bf.set48 = or i16 %bf.clear47, %bf.shl46
  store i16 %bf.set48, ptr %m_relPositioned, align 2
  %bf.result.cast49 = trunc i16 %32 to i8
  %loadedv50 = trunc i8 %bf.result.cast49 to i1
  br label %if.end51

if.end51:                                         ; preds = %if.then42, %if.else
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then28
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end52, %sw.bb
  ret void
}

declare i32 @uselessFunction(...) #1

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
