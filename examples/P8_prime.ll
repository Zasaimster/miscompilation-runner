@g_attrib_effect = common global i32 0, align 4
define internal void @actual_writer() readnone { 
  store i32 10, i32* @g_attrib_effect, align 4
  ret void
}
define i32 @main() {
  store i32 0, i32* @g_attrib_effect, align 4
  ; call void @actual_writer() --- MISOPTIMIZATION: Call removed due to faulty readnone
  ret i32 0 ; CRC on @g_attrib_effect (0)
}