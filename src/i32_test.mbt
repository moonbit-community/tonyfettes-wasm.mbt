///|
test "i32" {
  @wasm.i32_store(0, 1)
  @wasm.i32_store(4, 2)
  inspect(@wasm.i32_load(0), content="1")
  inspect(@wasm.i32_load(4), content="2")
}
