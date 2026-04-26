///|
test "i64" {
  @wasm.i64_store(0, 1)
  @wasm.i64_store(8, 2)
  inspect(i64_load(0), content="1")
  inspect(i64_load(8), content="2")
}
