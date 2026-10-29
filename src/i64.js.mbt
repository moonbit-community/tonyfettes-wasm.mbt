///|
extern "js" fn i64_store_ffi(
  memory~ : Memory = memory_default,
  offset : Int32,
  value : BigInt,
) =
  #|(memory, offset, value) => {
  #|  return new DataView(memory.buffer).setBigInt64(offset, value, true);
  #|}

///|
pub fn i64_store(
  memory~ : Memory = memory_default,
  offset : Int32,
  value : Int64,
) -> Unit {
  i64_store_ffi(memory~, offset, BigInt::from_int64(value))
}

///|
pub extern "js" fn i64_load_ffi(
  memory~ : Memory = memory_default,
  offset : Int32,
) -> BigInt =
  #|(memory, offset) => {
  #|  return new DataView(memory.buffer).getBigInt64(offset, true);
  #|}

///|
pub fn i64_load(memory~ : Memory = memory_default, offset : Int32) -> Int64 {
  BigInt::to_int64(i64_load_ffi(memory~, offset))
}
