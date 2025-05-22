@g_attrib_effect = common global i32 0, align 4

define internal void @actual_writer() { 
  store i32 10, i32* @g_attrib_effect, align 4
  ret void 
}
define i32 @main() {
  store i32 0, i32* @g_attrib_effect, align 4
  call void @actual_writer() ; @g_attrib_effect becomes 10
  ret i32 0 ; CRC on @g_attrib_effect (10)
}
