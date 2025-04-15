; 18426685828332586206007814242914428363
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/18426685828332586206007814242914428363_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/18426685828332586206007814242914428363.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 541065216) i32 @helper_neon_rshl_s8(i32 noundef %arg1, i32 noundef %arg2) local_unnamed_addr #0 {
entry:
  %0 = shl i32 %arg2, 16
  %conv60 = ashr i32 %0, 24
  %or.cond305 = icmp ugt i32 %conv60, -8
  br i1 %or.cond305, label %if.then97, label %if.end119

if.then97:                                        ; preds = %entry
  %sub101 = xor i32 %conv60, -1
  %shl102 = shl nuw nsw i32 1, %sub101
  %sub105 = sub nsw i32 0, %conv60
  %shr106 = lshr i32 %shl102, %sub105
  %1 = shl nuw nsw i32 %shr106, 8
  br label %if.end119

if.end119:                                        ; preds = %if.then97, %entry
  %vdest.sroa.12.0 = phi i32 [ %1, %if.then97 ], [ 0, %entry ]
  %2 = shl i32 %arg2, 8
  %conv124 = ashr i32 %2, 24
  %or.cond308 = icmp ugt i32 %conv124, -8
  br i1 %or.cond308, label %if.then161, label %if.end183

if.then161:                                       ; preds = %if.end119
  %sub165 = xor i32 %conv124, -1
  %shl166 = shl nuw nsw i32 1, %sub165
  %sub169 = sub nsw i32 0, %conv124
  %shr170 = lshr i32 %shl166, %sub169
  %3 = shl nuw nsw i32 %shr170, 16
  br label %if.end183

if.end183:                                        ; preds = %if.then161, %if.end119
  %vdest.sroa.21.0 = phi i32 [ %3, %if.then161 ], [ 0, %if.end119 ]
  %conv188 = ashr i32 %arg2, 24
  %or.cond311 = icmp ugt i32 %conv188, -8
  br i1 %or.cond311, label %if.then225, label %if.end247

if.then225:                                       ; preds = %if.end183
  %sub229 = xor i32 %conv188, -1
  %shl230 = shl nuw nsw i32 1, %sub229
  %sub233 = sub nsw i32 0, %conv188
  %shr234 = lshr i32 %shl230, %sub233
  %4 = shl nuw nsw i32 %shr234, 24
  br label %if.end247

if.end247:                                        ; preds = %if.then225, %if.end183
  %vdest.sroa.30.0 = phi i32 [ %4, %if.then225 ], [ 0, %if.end183 ]
  %sext = shl i32 %arg2, 24
  %cmp18 = icmp ne i32 %sext, -134217728
  %conv = ashr exact i32 %sext, 24
  %5 = icmp ugt i32 %conv, -9
  %or.cond302 = and i1 %cmp18, %5
  %sub40 = xor i32 %conv, -1
  %shl = shl nuw nsw i32 1, %sub40
  %sub42 = sub nsw i32 0, %conv
  %shr43 = lshr i32 %shl, %sub42
  %vdest.sroa.0.0 = select i1 %or.cond302, i32 %shr43, i32 0
  %vdest.sroa.21.0.insert.insert = or i32 %vdest.sroa.12.0, %vdest.sroa.0.0
  %vdest.sroa.12.0.insert.insert = or i32 %vdest.sroa.21.0.insert.insert, %vdest.sroa.21.0
  %vdest.sroa.0.0.insert.insert = or i32 %vdest.sroa.12.0.insert.insert, %vdest.sroa.30.0
  ret i32 %vdest.sroa.0.0.insert.insert
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  tail call void @abort() #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
