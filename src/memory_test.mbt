///|
test "memory growth and overlapping copy preserve stored values" {
  let pages = @wasm.memory_size()
  assert_eq(@wasm.memory_grow(1), pages)
  assert_eq(@wasm.memory_size(), pages + 1)
  // Use the new page rather than the runtime's existing heap.
  let address = pages * 65536
  @wasm.i32_store(address, 11)
  @wasm.i32_store(address + 4, 22)
  @wasm.memory_copy(address + 4, address, 8)
  assert_eq(@wasm.i32_load(address + 4), 11)
  assert_eq(@wasm.i32_load(address + 8), 22)
  @wasm.memory_atomic_notify(address, 0)
}
