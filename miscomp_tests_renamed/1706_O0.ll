; 162825596864495148698539138361404616779
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/162825596864495148698539138361404616779.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/162825596864495148698539138361404616779.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i8, i8, i16 }
%struct.b = type { i32, i16, i16 }

@a1.x = internal global %struct.a { i8 -2, i8 2, i16 -2 }, align 2
@a1.y = internal global %struct.a { i8 65, i8 2, i16 -3 }, align 2
@a2.x = internal global %struct.a { i8 1, i8 66, i16 -2 }, align 2
@a2.y = internal global %struct.a { i8 1, i8 2, i16 -3 }, align 2
@a3.x = internal global %struct.a { i8 9, i8 66, i16 -2 }, align 2
@a3.y = internal global %struct.a { i8 33, i8 18, i16 -3 }, align 2
@b1.x = internal global %struct.b { i32 -2, i16 2, i16 1 }, align 4
@b1.y = internal global %struct.b { i32 -3, i16 2, i16 65 }, align 4
@b2.x = internal global %struct.b { i32 -2, i16 66, i16 1 }, align 4
@b2.y = internal global %struct.b { i32 -3, i16 2, i16 1 }, align 4
@b3.x = internal global %struct.b { i32 -2, i16 66, i16 9 }, align 4
@b3.y = internal global %struct.b { i32 -3, i16 18, i16 33 }, align 4
@c1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 46, i8 0, i8 4, i8 0, [12 x i8] zeroinitializer }, align 16
@c1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 45, i8 0, i8 4, i8 1, [12 x i8] zeroinitializer }, align 16
@c2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 46, i8 4, i8 4, i8 0, [12 x i8] zeroinitializer }, align 16
@c2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 45, i8 0, i8 4, i8 0, [12 x i8] zeroinitializer }, align 16
@c3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 46, i8 4, i8 36, i8 0, [12 x i8] zeroinitializer }, align 16
@c3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 45, i8 1, i8 -124, i8 0, [12 x i8] zeroinitializer }, align 16
@d1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 1, i8 -128, i8 0, i8 -32, [12 x i8] zeroinitializer }, align 16
@d1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 65, i8 -128, i8 0, i8 -48, [12 x i8] zeroinitializer }, align 16
@d2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 1, i8 -128, i8 16, i8 -32, [12 x i8] zeroinitializer }, align 16
@d2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 1, i8 -128, i8 0, i8 -48, [12 x i8] zeroinitializer }, align 16
@d3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 9, i8 -128, i8 16, i8 -32, [12 x i8] zeroinitializer }, align 16
@d3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 33, i8 -128, i8 4, i8 -48, [12 x i8] zeroinitializer }, align 16
@e1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -1, i8 -1, i8 -2, [12 x i8] zeroinitializer }, align 16
@e1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -19, i8 -1, i8 -1, i8 -1, [12 x i8] zeroinitializer }, align 16
@e2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -1, i8 -1, i8 -1, [12 x i8] zeroinitializer }, align 16
@e2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -19, i8 -5, i8 -1, i8 -1, [12 x i8] zeroinitializer }, align 16
@e3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -2, i8 127, i8 -1, [12 x i8] zeroinitializer }, align 16
@e3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -19, i8 -5, i8 -33, i8 -1, [12 x i8] zeroinitializer }, align 16
@e4.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -1, i8 3, i8 0, [12 x i8] zeroinitializer }, align 16
@f1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -65, i8 -65, i8 -1, i8 -17, [12 x i8] zeroinitializer }, align 16
@f1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -65, i8 -1, i8 -33, [12 x i8] zeroinitializer }, align 16
@f2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -65, i8 -1, i8 -17, [12 x i8] zeroinitializer }, align 16
@f2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -65, i8 -17, i8 -33, [12 x i8] zeroinitializer }, align 16
@f3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -33, i8 -65, i8 -5, i8 -17, [12 x i8] zeroinitializer }, align 16
@f3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -9, i8 -65, i8 -17, i8 -33, [12 x i8] zeroinitializer }, align 16
@f4.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 0, i8 -64, i8 -1, i8 -1, [12 x i8] zeroinitializer }, align 16
@g1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -1, i8 -1, i8 -2, [12 x i8] zeroinitializer }, align 16
@g1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -2, i8 -1, i8 -1, i8 -33, [12 x i8] zeroinitializer }, align 16
@g2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -1, i8 -1, i8 -1, [12 x i8] zeroinitializer }, align 16
@g2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -66, i8 -1, i8 -1, i8 -33, [12 x i8] zeroinitializer }, align 16
@g3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -2, i8 127, i8 -1, [12 x i8] zeroinitializer }, align 16
@g3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -66, i8 -1, i8 -3, i8 -33, [12 x i8] zeroinitializer }, align 16
@g4.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 14, i8 2, i8 64, i8 0, [12 x i8] zeroinitializer }, align 16
@g4.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 0, i8 2, i8 64, i8 -48, [12 x i8] zeroinitializer }, align 16
@g5.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 14, i8 32, i8 0, i8 4, [12 x i8] zeroinitializer }, align 16
@g5.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 32, i8 0, i8 4, i8 -48, [12 x i8] zeroinitializer }, align 16
@g6.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 14, i8 -30, i8 67, i8 -12, [12 x i8] zeroinitializer }, align 16
@g6.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 47, i8 -62, i8 71, i8 -48, [12 x i8] zeroinitializer }, align 16
@g7.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -2, i8 34, i8 124, i8 4, [12 x i8] zeroinitializer }, align 16
@g7.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 32, i8 62, i8 68, i8 -33, [12 x i8] zeroinitializer }, align 16
@h1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -65, i8 -65, i8 -1, i8 -17, [12 x i8] zeroinitializer }, align 16
@h1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -3, i8 -1, i8 -5, i8 -1, [12 x i8] zeroinitializer }, align 16
@h2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -65, i8 -1, i8 -17, [12 x i8] zeroinitializer }, align 16
@h2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -3, i8 -1, i8 -5, i8 -2, [12 x i8] zeroinitializer }, align 16
@h3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -33, i8 -65, i8 -5, i8 -17, [12 x i8] zeroinitializer }, align 16
@h3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 125, i8 -1, i8 -5, i8 -2, [12 x i8] zeroinitializer }, align 16
@h4.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 16, i8 0, i8 8, i8 -32, [12 x i8] zeroinitializer }, align 16
@h4.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 13, i8 16, i8 0, i8 8, [12 x i8] zeroinitializer }, align 16
@h5.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 0, i8 1, i8 -128, i8 -32, [12 x i8] zeroinitializer }, align 16
@h5.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 13, i8 1, i8 -128, i8 0, [12 x i8] zeroinitializer }, align 16
@h6.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 16, i8 61, i8 -120, i8 -17, [12 x i8] zeroinitializer }, align 16
@h6.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -3, i8 17, i8 -68, i8 8, [12 x i8] zeroinitializer }, align 16
@h7.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 31, i8 -63, i8 -117, i8 -32, [12 x i8] zeroinitializer }, align 16
@h7.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 13, i8 -47, i8 -125, i8 -8, [12 x i8] zeroinitializer }, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @a1() #0 {
entry:
  %0 = load i8, ptr @a1.x, align 2
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr @a1.y, align 2
  %conv1 = sext i8 %1 to i32
  %and = and i32 %conv1, -65
  %cmp = icmp eq i32 %conv, %and
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds nuw (%struct.a, ptr @a1.x, i32 0, i32 1), align 1
  %conv3 = sext i8 %2 to i32
  %3 = load i8, ptr getelementptr inbounds nuw (%struct.a, ptr @a1.y, i32 0, i32 1), align 1
  %conv4 = sext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @a2() #0 {
entry:
  %0 = load i8, ptr @a2.x, align 2
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr @a2.y, align 2
  %conv1 = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds nuw (%struct.a, ptr @a2.x, i32 0, i32 1), align 1
  %conv3 = sext i8 %2 to i32
  %and = and i32 %conv3, -65
  %3 = load i8, ptr getelementptr inbounds nuw (%struct.a, ptr @a2.y, i32 0, i32 1), align 1
  %conv4 = sext i8 %3 to i32
  %cmp5 = icmp eq i32 %and, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @a3() #0 {
entry:
  %0 = load i8, ptr @a3.x, align 2
  %conv = sext i8 %0 to i32
  %and = and i32 %conv, -9
  %1 = load i8, ptr @a3.y, align 2
  %conv1 = sext i8 %1 to i32
  %and2 = and i32 %conv1, -33
  %cmp = icmp eq i32 %and, %and2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds nuw (%struct.a, ptr @a3.x, i32 0, i32 1), align 1
  %conv4 = sext i8 %2 to i32
  %and5 = and i32 %conv4, -65
  %3 = load i8, ptr getelementptr inbounds nuw (%struct.a, ptr @a3.y, i32 0, i32 1), align 1
  %conv6 = sext i8 %3 to i32
  %and7 = and i32 %conv6, -17
  %cmp8 = icmp eq i32 %and5, %and7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b1() #0 {
entry:
  %0 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b1.x, i32 0, i32 2), align 2
  %conv = sext i16 %0 to i32
  %1 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b1.y, i32 0, i32 2), align 2
  %conv1 = sext i16 %1 to i32
  %and = and i32 %conv1, -65
  %cmp = icmp eq i32 %conv, %and
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b1.x, i32 0, i32 1), align 4
  %conv3 = sext i16 %2 to i32
  %3 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b1.y, i32 0, i32 1), align 4
  %conv4 = sext i16 %3 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b2() #0 {
entry:
  %0 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b2.x, i32 0, i32 2), align 2
  %conv = sext i16 %0 to i32
  %1 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b2.y, i32 0, i32 2), align 2
  %conv1 = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b2.x, i32 0, i32 1), align 4
  %conv3 = sext i16 %2 to i32
  %and = and i32 %conv3, -65
  %3 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b2.y, i32 0, i32 1), align 4
  %conv4 = sext i16 %3 to i32
  %cmp5 = icmp eq i32 %and, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b3() #0 {
entry:
  %0 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b3.x, i32 0, i32 2), align 2
  %conv = sext i16 %0 to i32
  %and = and i32 %conv, -9
  %1 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b3.y, i32 0, i32 2), align 2
  %conv1 = sext i16 %1 to i32
  %and2 = and i32 %conv1, -33
  %cmp = icmp eq i32 %and, %and2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b3.x, i32 0, i32 1), align 4
  %conv4 = sext i16 %2 to i32
  %and5 = and i32 %conv4, -65
  %3 = load i16, ptr getelementptr inbounds nuw (%struct.b, ptr @b3.y, i32 0, i32 1), align 4
  %conv6 = sext i16 %3 to i32
  %and7 = and i32 %conv6, -17
  %cmp8 = icmp eq i32 %and5, %and7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @c1() #0 {
entry:
  %bf.load = load i32, ptr @c1.x, align 16
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.load1 = load i32, ptr @c1.y, align 16
  %bf.lshr2 = lshr i32 %bf.load1, 18
  %and = and i32 %bf.lshr2, -65
  %cmp = icmp eq i32 %bf.lshr, %and
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load3 = load i32, ptr @c1.x, align 16
  %bf.lshr4 = lshr i32 %bf.load3, 4
  %bf.clear = and i32 %bf.lshr4, 16383
  %bf.load5 = load i32, ptr @c1.y, align 16
  %bf.lshr6 = lshr i32 %bf.load5, 4
  %bf.clear7 = and i32 %bf.lshr6, 16383
  %cmp8 = icmp eq i32 %bf.clear, %bf.clear7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @c2() #0 {
entry:
  %bf.load = load i32, ptr @c2.x, align 16
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.load1 = load i32, ptr @c2.y, align 16
  %bf.lshr2 = lshr i32 %bf.load1, 18
  %cmp = icmp eq i32 %bf.lshr, %bf.lshr2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load3 = load i32, ptr @c2.x, align 16
  %bf.lshr4 = lshr i32 %bf.load3, 4
  %bf.clear = and i32 %bf.lshr4, 16383
  %and = and i32 %bf.clear, -65
  %bf.load5 = load i32, ptr @c2.y, align 16
  %bf.lshr6 = lshr i32 %bf.load5, 4
  %bf.clear7 = and i32 %bf.lshr6, 16383
  %cmp8 = icmp eq i32 %and, %bf.clear7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @c3() #0 {
entry:
  %bf.load = load i32, ptr @c3.x, align 16
  %bf.lshr = lshr i32 %bf.load, 18
  %and = and i32 %bf.lshr, -9
  %bf.load1 = load i32, ptr @c3.y, align 16
  %bf.lshr2 = lshr i32 %bf.load1, 18
  %and3 = and i32 %bf.lshr2, -33
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @c3.x, align 16
  %bf.lshr5 = lshr i32 %bf.load4, 4
  %bf.clear = and i32 %bf.lshr5, 16383
  %and6 = and i32 %bf.clear, -65
  %bf.load7 = load i32, ptr @c3.y, align 16
  %bf.lshr8 = lshr i32 %bf.load7, 4
  %bf.clear9 = and i32 %bf.lshr8, 16383
  %and10 = and i32 %bf.clear9, -17
  %cmp11 = icmp eq i32 %and6, %and10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d1() #0 {
entry:
  %bf.load = load i32, ptr @d1.x, align 16
  %bf.clear = and i32 %bf.load, 16383
  %bf.load1 = load i32, ptr @d1.y, align 16
  %bf.clear2 = and i32 %bf.load1, 16383
  %and = and i32 %bf.clear2, -65
  %cmp = icmp eq i32 %bf.clear, %and
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load3 = load i32, ptr @d1.x, align 16
  %bf.lshr = lshr i32 %bf.load3, 14
  %bf.clear4 = and i32 %bf.lshr, 16383
  %bf.load5 = load i32, ptr @d1.y, align 16
  %bf.lshr6 = lshr i32 %bf.load5, 14
  %bf.clear7 = and i32 %bf.lshr6, 16383
  %cmp8 = icmp eq i32 %bf.clear4, %bf.clear7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d2() #0 {
entry:
  %bf.load = load i32, ptr @d2.x, align 16
  %bf.clear = and i32 %bf.load, 16383
  %bf.load1 = load i32, ptr @d2.y, align 16
  %bf.clear2 = and i32 %bf.load1, 16383
  %cmp = icmp eq i32 %bf.clear, %bf.clear2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load3 = load i32, ptr @d2.x, align 16
  %bf.lshr = lshr i32 %bf.load3, 14
  %bf.clear4 = and i32 %bf.lshr, 16383
  %and = and i32 %bf.clear4, -65
  %bf.load5 = load i32, ptr @d2.y, align 16
  %bf.lshr6 = lshr i32 %bf.load5, 14
  %bf.clear7 = and i32 %bf.lshr6, 16383
  %cmp8 = icmp eq i32 %and, %bf.clear7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d3() #0 {
entry:
  %bf.load = load i32, ptr @d3.x, align 16
  %bf.clear = and i32 %bf.load, 16383
  %and = and i32 %bf.clear, -9
  %bf.load1 = load i32, ptr @d3.y, align 16
  %bf.clear2 = and i32 %bf.load1, 16383
  %and3 = and i32 %bf.clear2, -33
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @d3.x, align 16
  %bf.lshr = lshr i32 %bf.load4, 14
  %bf.clear5 = and i32 %bf.lshr, 16383
  %and6 = and i32 %bf.clear5, -65
  %bf.load7 = load i32, ptr @d3.y, align 16
  %bf.lshr8 = lshr i32 %bf.load7, 14
  %bf.clear9 = and i32 %bf.lshr8, 16383
  %and10 = and i32 %bf.clear9, -17
  %cmp11 = icmp eq i32 %and6, %and10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @e1() #0 {
entry:
  %bf.load = load i32, ptr @e1.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %bf.load1 = load i32, ptr @e1.y, align 16
  %bf.ashr2 = ashr i32 %bf.load1, 18
  %and = and i32 %bf.ashr2, -65
  %cmp = icmp eq i32 %bf.ashr, %and
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load3 = load i32, ptr @e1.x, align 16
  %bf.shl = shl i32 %bf.load3, 14
  %bf.ashr4 = ashr i32 %bf.shl, 18
  %bf.load5 = load i32, ptr @e1.y, align 16
  %bf.shl6 = shl i32 %bf.load5, 14
  %bf.ashr7 = ashr i32 %bf.shl6, 18
  %cmp8 = icmp eq i32 %bf.ashr4, %bf.ashr7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @e2() #0 {
entry:
  %bf.load = load i32, ptr @e2.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %bf.load1 = load i32, ptr @e2.y, align 16
  %bf.ashr2 = ashr i32 %bf.load1, 18
  %cmp = icmp eq i32 %bf.ashr, %bf.ashr2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load3 = load i32, ptr @e2.x, align 16
  %bf.shl = shl i32 %bf.load3, 14
  %bf.ashr4 = ashr i32 %bf.shl, 18
  %and = and i32 %bf.ashr4, -65
  %bf.load5 = load i32, ptr @e2.y, align 16
  %bf.shl6 = shl i32 %bf.load5, 14
  %bf.ashr7 = ashr i32 %bf.shl6, 18
  %cmp8 = icmp eq i32 %and, %bf.ashr7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @e3() #0 {
entry:
  %bf.load = load i32, ptr @e3.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %and = and i32 %bf.ashr, -9
  %bf.load1 = load i32, ptr @e3.y, align 16
  %bf.ashr2 = ashr i32 %bf.load1, 18
  %and3 = and i32 %bf.ashr2, -33
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @e3.x, align 16
  %bf.shl = shl i32 %bf.load4, 14
  %bf.ashr5 = ashr i32 %bf.shl, 18
  %and6 = and i32 %bf.ashr5, -65
  %bf.load7 = load i32, ptr @e3.y, align 16
  %bf.shl8 = shl i32 %bf.load7, 14
  %bf.ashr9 = ashr i32 %bf.shl8, 18
  %and10 = and i32 %bf.ashr9, -17
  %cmp11 = icmp eq i32 %and6, %and10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @e4() #0 {
entry:
  %bf.load = load i32, ptr @e4.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %cmp = icmp eq i32 %bf.ashr, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load1 = load i32, ptr @e4.x, align 16
  %bf.shl = shl i32 %bf.load1, 14
  %bf.ashr2 = ashr i32 %bf.shl, 18
  %and = and i32 %bf.ashr2, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1() #0 {
entry:
  %bf.load = load i32, ptr @f1.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %bf.load1 = load i32, ptr @f1.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 18
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %and = and i32 %bf.ashr3, -65
  %cmp = icmp eq i32 %bf.ashr, %and
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @f1.x, align 16
  %bf.shl5 = shl i32 %bf.load4, 4
  %bf.ashr6 = ashr i32 %bf.shl5, 18
  %bf.load7 = load i32, ptr @f1.y, align 16
  %bf.shl8 = shl i32 %bf.load7, 4
  %bf.ashr9 = ashr i32 %bf.shl8, 18
  %cmp10 = icmp eq i32 %bf.ashr6, %bf.ashr9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 {
entry:
  %bf.load = load i32, ptr @f2.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %bf.load1 = load i32, ptr @f2.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 18
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %cmp = icmp eq i32 %bf.ashr, %bf.ashr3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @f2.x, align 16
  %bf.shl5 = shl i32 %bf.load4, 4
  %bf.ashr6 = ashr i32 %bf.shl5, 18
  %and = and i32 %bf.ashr6, -65
  %bf.load7 = load i32, ptr @f2.y, align 16
  %bf.shl8 = shl i32 %bf.load7, 4
  %bf.ashr9 = ashr i32 %bf.shl8, 18
  %cmp10 = icmp eq i32 %and, %bf.ashr9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3() #0 {
entry:
  %bf.load = load i32, ptr @f3.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %and = and i32 %bf.ashr, -9
  %bf.load1 = load i32, ptr @f3.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 18
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %and4 = and i32 %bf.ashr3, -33
  %cmp = icmp eq i32 %and, %and4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load5 = load i32, ptr @f3.x, align 16
  %bf.shl6 = shl i32 %bf.load5, 4
  %bf.ashr7 = ashr i32 %bf.shl6, 18
  %and8 = and i32 %bf.ashr7, -65
  %bf.load9 = load i32, ptr @f3.y, align 16
  %bf.shl10 = shl i32 %bf.load9, 4
  %bf.ashr11 = ashr i32 %bf.shl10, 18
  %and12 = and i32 %bf.ashr11, -17
  %cmp13 = icmp eq i32 %and8, %and12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f4() #0 {
entry:
  %bf.load = load i32, ptr @f4.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %cmp = icmp eq i32 %bf.ashr, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load1 = load i32, ptr @f4.x, align 16
  %bf.shl2 = shl i32 %bf.load1, 4
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %and = and i32 %bf.ashr3, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g1() #0 {
entry:
  %bf.load = load i32, ptr @g1.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %bf.load1 = load i32, ptr @g1.y, align 16
  %bf.shl = shl i32 %bf.load1, 4
  %bf.ashr2 = ashr i32 %bf.shl, 18
  %and = and i32 %bf.ashr2, -65
  %cmp = icmp eq i32 %bf.ashr, %and
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load3 = load i32, ptr @g1.x, align 16
  %bf.shl4 = shl i32 %bf.load3, 14
  %bf.ashr5 = ashr i32 %bf.shl4, 18
  %bf.load6 = load i32, ptr @g1.y, align 16
  %bf.shl7 = shl i32 %bf.load6, 18
  %bf.ashr8 = ashr i32 %bf.shl7, 18
  %cmp9 = icmp eq i32 %bf.ashr5, %bf.ashr8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g2() #0 {
entry:
  %bf.load = load i32, ptr @g2.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %bf.load1 = load i32, ptr @g2.y, align 16
  %bf.shl = shl i32 %bf.load1, 4
  %bf.ashr2 = ashr i32 %bf.shl, 18
  %cmp = icmp eq i32 %bf.ashr, %bf.ashr2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load3 = load i32, ptr @g2.x, align 16
  %bf.shl4 = shl i32 %bf.load3, 14
  %bf.ashr5 = ashr i32 %bf.shl4, 18
  %and = and i32 %bf.ashr5, -65
  %bf.load6 = load i32, ptr @g2.y, align 16
  %bf.shl7 = shl i32 %bf.load6, 18
  %bf.ashr8 = ashr i32 %bf.shl7, 18
  %cmp9 = icmp eq i32 %and, %bf.ashr8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g3() #0 {
entry:
  %bf.load = load i32, ptr @g3.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %and = and i32 %bf.ashr, -9
  %bf.load1 = load i32, ptr @g3.y, align 16
  %bf.shl = shl i32 %bf.load1, 4
  %bf.ashr2 = ashr i32 %bf.shl, 18
  %and3 = and i32 %bf.ashr2, -33
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @g3.x, align 16
  %bf.shl5 = shl i32 %bf.load4, 14
  %bf.ashr6 = ashr i32 %bf.shl5, 18
  %and7 = and i32 %bf.ashr6, -65
  %bf.load8 = load i32, ptr @g3.y, align 16
  %bf.shl9 = shl i32 %bf.load8, 18
  %bf.ashr10 = ashr i32 %bf.shl9, 18
  %and11 = and i32 %bf.ashr10, -17
  %cmp12 = icmp eq i32 %and7, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g4() #0 {
entry:
  %bf.load = load i32, ptr @g4.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %and = and i32 %bf.ashr, 240
  %bf.load1 = load i32, ptr @g4.y, align 16
  %bf.shl = shl i32 %bf.load1, 4
  %bf.ashr2 = ashr i32 %bf.shl, 18
  %and3 = and i32 %bf.ashr2, 3840
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @g4.x, align 16
  %bf.shl5 = shl i32 %bf.load4, 14
  %bf.ashr6 = ashr i32 %bf.shl5, 18
  %and7 = and i32 %bf.ashr6, 240
  %bf.load8 = load i32, ptr @g4.y, align 16
  %bf.shl9 = shl i32 %bf.load8, 18
  %bf.ashr10 = ashr i32 %bf.shl9, 18
  %and11 = and i32 %bf.ashr10, 3840
  %cmp12 = icmp eq i32 %and7, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g5() #0 {
entry:
  %bf.load = load i32, ptr @g5.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %and = and i32 %bf.ashr, 3840
  %bf.load1 = load i32, ptr @g5.y, align 16
  %bf.shl = shl i32 %bf.load1, 4
  %bf.ashr2 = ashr i32 %bf.shl, 18
  %and3 = and i32 %bf.ashr2, 240
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @g5.x, align 16
  %bf.shl5 = shl i32 %bf.load4, 14
  %bf.ashr6 = ashr i32 %bf.shl5, 18
  %and7 = and i32 %bf.ashr6, 3840
  %bf.load8 = load i32, ptr @g5.y, align 16
  %bf.shl9 = shl i32 %bf.load8, 18
  %bf.ashr10 = ashr i32 %bf.shl9, 18
  %and11 = and i32 %bf.ashr10, 240
  %cmp12 = icmp eq i32 %and7, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g6() #0 {
entry:
  %bf.load = load i32, ptr @g6.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %and = and i32 %bf.ashr, 1023
  %bf.load1 = load i32, ptr @g6.y, align 16
  %bf.shl = shl i32 %bf.load1, 4
  %bf.ashr2 = ashr i32 %bf.shl, 18
  %and3 = and i32 %bf.ashr2, 16368
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @g6.x, align 16
  %bf.shl5 = shl i32 %bf.load4, 14
  %bf.ashr6 = ashr i32 %bf.shl5, 18
  %and7 = and i32 %bf.ashr6, 1023
  %bf.load8 = load i32, ptr @g6.y, align 16
  %bf.shl9 = shl i32 %bf.load8, 18
  %bf.ashr10 = ashr i32 %bf.shl9, 18
  %and11 = and i32 %bf.ashr10, 16368
  %cmp12 = icmp eq i32 %and7, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g7() #0 {
entry:
  %bf.load = load i32, ptr @g7.x, align 16
  %bf.ashr = ashr i32 %bf.load, 18
  %and = and i32 %bf.ashr, 16368
  %bf.load1 = load i32, ptr @g7.y, align 16
  %bf.shl = shl i32 %bf.load1, 4
  %bf.ashr2 = ashr i32 %bf.shl, 18
  %and3 = and i32 %bf.ashr2, 1023
  %cmp = icmp eq i32 %and, %and3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @g7.x, align 16
  %bf.shl5 = shl i32 %bf.load4, 14
  %bf.ashr6 = ashr i32 %bf.shl5, 18
  %and7 = and i32 %bf.ashr6, 16368
  %bf.load8 = load i32, ptr @g7.y, align 16
  %bf.shl9 = shl i32 %bf.load8, 18
  %bf.ashr10 = ashr i32 %bf.shl9, 18
  %and11 = and i32 %bf.ashr10, 1023
  %cmp12 = icmp eq i32 %and7, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h1() #0 {
entry:
  %bf.load = load i32, ptr @h1.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %bf.load1 = load i32, ptr @h1.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 14
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %and = and i32 %bf.ashr3, -65
  %cmp = icmp eq i32 %bf.ashr, %and
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @h1.x, align 16
  %bf.shl5 = shl i32 %bf.load4, 4
  %bf.ashr6 = ashr i32 %bf.shl5, 18
  %bf.load7 = load i32, ptr @h1.y, align 16
  %bf.ashr8 = ashr i32 %bf.load7, 18
  %cmp9 = icmp eq i32 %bf.ashr6, %bf.ashr8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h2() #0 {
entry:
  %bf.load = load i32, ptr @h2.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %bf.load1 = load i32, ptr @h2.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 14
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %cmp = icmp eq i32 %bf.ashr, %bf.ashr3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load4 = load i32, ptr @h2.x, align 16
  %bf.shl5 = shl i32 %bf.load4, 4
  %bf.ashr6 = ashr i32 %bf.shl5, 18
  %and = and i32 %bf.ashr6, -65
  %bf.load7 = load i32, ptr @h2.y, align 16
  %bf.ashr8 = ashr i32 %bf.load7, 18
  %cmp9 = icmp eq i32 %and, %bf.ashr8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h3() #0 {
entry:
  %bf.load = load i32, ptr @h3.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %and = and i32 %bf.ashr, -9
  %bf.load1 = load i32, ptr @h3.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 14
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %and4 = and i32 %bf.ashr3, -33
  %cmp = icmp eq i32 %and, %and4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load5 = load i32, ptr @h3.x, align 16
  %bf.shl6 = shl i32 %bf.load5, 4
  %bf.ashr7 = ashr i32 %bf.shl6, 18
  %and8 = and i32 %bf.ashr7, -65
  %bf.load9 = load i32, ptr @h3.y, align 16
  %bf.ashr10 = ashr i32 %bf.load9, 18
  %and11 = and i32 %bf.ashr10, -17
  %cmp12 = icmp eq i32 %and8, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h4() #0 {
entry:
  %bf.load = load i32, ptr @h4.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %and = and i32 %bf.ashr, 240
  %bf.load1 = load i32, ptr @h4.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 14
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %and4 = and i32 %bf.ashr3, 3840
  %cmp = icmp eq i32 %and, %and4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load5 = load i32, ptr @h4.x, align 16
  %bf.shl6 = shl i32 %bf.load5, 4
  %bf.ashr7 = ashr i32 %bf.shl6, 18
  %and8 = and i32 %bf.ashr7, 240
  %bf.load9 = load i32, ptr @h4.y, align 16
  %bf.ashr10 = ashr i32 %bf.load9, 18
  %and11 = and i32 %bf.ashr10, 3840
  %cmp12 = icmp eq i32 %and8, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h5() #0 {
entry:
  %bf.load = load i32, ptr @h5.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %and = and i32 %bf.ashr, 3840
  %bf.load1 = load i32, ptr @h5.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 14
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %and4 = and i32 %bf.ashr3, 240
  %cmp = icmp eq i32 %and, %and4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load5 = load i32, ptr @h5.x, align 16
  %bf.shl6 = shl i32 %bf.load5, 4
  %bf.ashr7 = ashr i32 %bf.shl6, 18
  %and8 = and i32 %bf.ashr7, 3840
  %bf.load9 = load i32, ptr @h5.y, align 16
  %bf.ashr10 = ashr i32 %bf.load9, 18
  %and11 = and i32 %bf.ashr10, 240
  %cmp12 = icmp eq i32 %and8, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h6() #0 {
entry:
  %bf.load = load i32, ptr @h6.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %and = and i32 %bf.ashr, 1023
  %bf.load1 = load i32, ptr @h6.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 14
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %and4 = and i32 %bf.ashr3, 16368
  %cmp = icmp eq i32 %and, %and4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load5 = load i32, ptr @h6.x, align 16
  %bf.shl6 = shl i32 %bf.load5, 4
  %bf.ashr7 = ashr i32 %bf.shl6, 18
  %and8 = and i32 %bf.ashr7, 1023
  %bf.load9 = load i32, ptr @h6.y, align 16
  %bf.ashr10 = ashr i32 %bf.load9, 18
  %and11 = and i32 %bf.ashr10, 16368
  %cmp12 = icmp eq i32 %and8, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h7() #0 {
entry:
  %bf.load = load i32, ptr @h7.x, align 16
  %bf.shl = shl i32 %bf.load, 18
  %bf.ashr = ashr i32 %bf.shl, 18
  %and = and i32 %bf.ashr, 16368
  %bf.load1 = load i32, ptr @h7.y, align 16
  %bf.shl2 = shl i32 %bf.load1, 14
  %bf.ashr3 = ashr i32 %bf.shl2, 18
  %and4 = and i32 %bf.ashr3, 1023
  %cmp = icmp eq i32 %and, %and4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %bf.load5 = load i32, ptr @h7.x, align 16
  %bf.shl6 = shl i32 %bf.load5, 4
  %bf.ashr7 = ashr i32 %bf.shl6, 18
  %and8 = and i32 %bf.ashr7, 16368
  %bf.load9 = load i32, ptr @h7.y, align 16
  %bf.ashr10 = ashr i32 %bf.load9, 18
  %and11 = and i32 %bf.ashr10, 1023
  %cmp12 = icmp eq i32 %and8, %and11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @a1()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @a2()
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @a3()
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @b1()
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @abort() #3
  unreachable

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @b2()
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @abort() #3
  unreachable

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @b3()
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @c1()
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @abort() #3
  unreachable

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @c2()
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @abort() #3
  unreachable

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @c3()
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @abort() #3
  unreachable

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @d1()
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @abort() #3
  unreachable

if.end36:                                         ; preds = %if.end32
  %call37 = call i32 @d2()
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @abort() #3
  unreachable

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @d3()
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @abort() #3
  unreachable

if.end44:                                         ; preds = %if.end40
  %call45 = call i32 @e1()
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end44
  call void @abort() #3
  unreachable

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 @e2()
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @abort() #3
  unreachable

if.end52:                                         ; preds = %if.end48
  %call53 = call i32 @e3()
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @abort() #3
  unreachable

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @e4()
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @abort() #3
  unreachable

if.end60:                                         ; preds = %if.end56
  %call61 = call i32 @f1()
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void @abort() #3
  unreachable

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @f2()
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end64
  call void @abort() #3
  unreachable

if.end68:                                         ; preds = %if.end64
  %call69 = call i32 @f3()
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end68
  call void @abort() #3
  unreachable

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @f4()
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end76, label %if.then75

if.then75:                                        ; preds = %if.end72
  call void @abort() #3
  unreachable

if.end76:                                         ; preds = %if.end72
  %call77 = call i32 @g1()
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.end76
  call void @abort() #3
  unreachable

if.end80:                                         ; preds = %if.end76
  %call81 = call i32 @g2()
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.end80
  call void @abort() #3
  unreachable

if.end84:                                         ; preds = %if.end80
  %call85 = call i32 @g3()
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.end84
  call void @abort() #3
  unreachable

if.end88:                                         ; preds = %if.end84
  %call89 = call i32 @g4()
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  call void @abort() #3
  unreachable

if.end92:                                         ; preds = %if.end88
  %call93 = call i32 @g5()
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  call void @abort() #3
  unreachable

if.end96:                                         ; preds = %if.end92
  %call97 = call i32 @g6()
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %if.end96
  call void @abort() #3
  unreachable

if.end100:                                        ; preds = %if.end96
  %call101 = call i32 @g7()
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.end100
  call void @abort() #3
  unreachable

if.end104:                                        ; preds = %if.end100
  %call105 = call i32 @h1()
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.end104
  call void @abort() #3
  unreachable

if.end108:                                        ; preds = %if.end104
  %call109 = call i32 @h2()
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.end108
  call void @abort() #3
  unreachable

if.end112:                                        ; preds = %if.end108
  %call113 = call i32 @h3()
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end112
  call void @abort() #3
  unreachable

if.end116:                                        ; preds = %if.end112
  %call117 = call i32 @h4()
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end116
  call void @abort() #3
  unreachable

if.end120:                                        ; preds = %if.end116
  %call121 = call i32 @h5()
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end120
  call void @abort() #3
  unreachable

if.end124:                                        ; preds = %if.end120
  %call125 = call i32 @h6()
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.end128, label %if.then127

if.then127:                                       ; preds = %if.end124
  call void @abort() #3
  unreachable

if.end128:                                        ; preds = %if.end124
  %call129 = call i32 @h7()
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.end132, label %if.then131

if.then131:                                       ; preds = %if.end128
  call void @abort() #3
  unreachable

if.end132:                                        ; preds = %if.end128
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
