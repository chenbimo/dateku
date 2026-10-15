///|
/// 黑盒测试：只断言公开入口。
test "hello returns the module name" {
  assert_eq(@lib.hello(), "dateku")
}

///|
test "hello is non-empty" {
  assert_eq(@lib.hello().is_empty(), false)
}
