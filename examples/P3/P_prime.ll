define void @InitMoveArray() {
  %X = alloca [2 x i64], align 8
  br i1 false, label %bb13, label %bb4

bb4:                                              ; preds = %bb3
  %reg3011 = getelementptr [2 x i64], ptr %X, i64 0, i64 0
  store i64 1, ptr %reg3011, align 4
  br label %bb8

bb8:                                              ; preds = %bb8, %bb4
  br i1 false, label %bb8, label %bb13.loopexit

bb13.loopexit:                                    ; preds = %bb8
  br label %bb13

bb13:                                             ; preds = %bb13.loopexit, %bb3
  ret void
}
