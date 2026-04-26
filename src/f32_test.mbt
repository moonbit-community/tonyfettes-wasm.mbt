///|
test "f32" {
  @wasm.f32_store(0, 1.0)
  @wasm.f32_store(4, 2.0)
  inspect(f32_load(0), content="1")
  inspect(f32_load(4), content="2")
}
