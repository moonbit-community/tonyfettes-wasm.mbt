///|
pub extern "js" fn i32_extend16_s(value : Int) -> Int =
  #|(value) => {
  #|  return (value << 16) >> 16;
  #|}

///|
pub extern "js" fn i32_extend8_s(value : Int) -> Int =
  #|(value) => {
  #|  return (value << 24) >> 24;
  #|}

///|
pub extern "js" fn i32_store8(
  memory? : Memory = memory_default,
  offset : Int,
  value : Int,
) =
  #|(memory, offset, value) => {
  #|  return new DataView(memory.buffer).setInt8(offset, value);
  #|}

///|
pub extern "js" fn i32_load8_u(
  memory? : Memory = memory_default,
  offset : Int,
) -> Int =
  #|(memory, offset) => {
  #|  return new DataView(memory.buffer).getUint8(offset);
  #|}

///|
pub extern "js" fn i32_load8_s(
  memory? : Memory = memory_default,
  offset : Int,
) -> Int =
  #|(memory, offset) => {
  #|  return new DataView(memory.buffer).getInt8(offset);
  #|}

///|
pub extern "js" fn i32_store16(
  memory? : Memory = memory_default,
  offset : Int,
  value : Int,
) =
  #|(memory, offset, value) => {
  #|  return new DataView(memory.buffer).setInt16(offset, value, true);
  #|}

///|
pub extern "js" fn i32_load16_s(
  memory? : Memory = memory_default,
  offset : Int,
) -> Int =
  #|(memory, offset) => {
  #|  return new DataView(memory.buffer).getInt16(offset, true);
  #|}

///|
pub extern "js" fn i32_load16_u(
  memory? : Memory = memory_default,
  offset : Int,
) -> Int =
  #|(memory, offset) => {
  #|  return new DataView(memory.buffer).getUint16(offset, true);
  #|}

///|
pub extern "js" fn i32_store(
  memory? : Memory = memory_default,
  offset : Int,
  value : Int,
) =
  #|(memory, offset, value) => {
  #|  return new DataView(memory.buffer).setInt32(offset, value, true);
  #|}

///|
pub extern "js" fn i32_load(
  memory? : Memory = memory_default,
  offset : Int,
) -> Int =
  #|(memory, offset) => {
  #|  return new DataView(memory.buffer).getInt32(offset, true);
  #|}
