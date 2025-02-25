define i32 @square(i32) local_unnamed_addr #0 {
entry:
    %2 = mul nsw i32 %0, %0
    ret i32 %2
}

define i32 @main() {
entry:
    %result = call i32 @square(i32 3)
    ret i32 %result
}