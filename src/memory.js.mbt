///|
#external
type Memory

///|
extern "js" fn Memory::new(initial~ : Int, maximum~ : Int) -> Memory =
  #|(initial, maximum) => {
  #|  return new WebAssembly.Memory({ initial, maximum })
  #|}

///|
let memory_default : Memory = Memory::new(initial=256, maximum=512)

///|
pub fn get_default_memory() -> Memory {
  memory_default
}

///|
pub extern "js" fn memory_copy(
  memory? : Memory = memory_default,
  dst : Int,
  src : Int,
  len : Int,
) =
  #|(memory, dst, src, len) => {
  #|  return new Uint8Array(memory.buffer).copyWithin(dst, src, src + len);
  #|}

///|
pub extern "js" fn memory_size(memory? : Memory = memory_default) -> Int =
  #|(memory) => {
  #|  return memory.buffer.byteLength / 65536;
  #|}

///|
pub extern "js" fn memory_grow(
  memory? : Memory = memory_default,
  size : Int,
) -> Int =
  #|(memory, size) => {
  #|  return memory.grow(size);
  #|}

///|
pub extern "js" fn memory_atomic_wait32(
  memory? : Memory = memory_default,
  address : Int,
  expected : Int,
  timeout : Int64,
) -> Int =
  #|(memory, address, expected, timeout) => {
  #|  return Atomics.wait(
  #|    new Int32Array(memory.buffer),
  #|    address / 4,
  #|    expected,
  #|    timeout
  #|  );
  #|}

///|
pub extern "js" fn memory_atomic_wait64(
  memory? : Memory = memory_default,
  address : Int,
  expected : Int64,
  timeout : Int64,
) -> Int =
  #|(memory, address, expected, timeout) => {
  #|  return Atomics.wait(
  #|    new BigInt64Array(memory.buffer),
  #|    address / 8,
  #|    BigInt(expected),
  #|    BigInt(timeout)
  #|  );
  #|}

///|
pub extern "js" fn memory_atomic_notify(
  memory? : Memory = memory_default,
  address : Int,
  count : Int,
) =
  #|(memory, address, count) => {
  #|  return Atomics.notify(new Int32Array(memory.buffer), address / 4, count);
  #|}
