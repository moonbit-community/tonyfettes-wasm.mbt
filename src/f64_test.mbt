///|
test "f64" {
  @wasm.f64_store(0, 1.0)
  @wasm.f64_store(8, 2.0)
  inspect(f64_load(0), content="1")
  inspect(f64_load(8), content="2")
}
