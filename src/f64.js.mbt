///|
pub extern "js" fn f64_store(
  memory? : Memory = memory_default,
  offset : Int,
  value : Double,
) =
  #|(memory, offset, value) => {
  #|  return new DataView(memory.buffer).setFloat64(offset, value, true);
  #|}

///|
pub extern "js" fn f64_load(
  memory? : Memory = memory_default,
  offset : Int,
) -> Double =
  #|(memory, offset) => {
  #|  return new DataView(memory.buffer).getFloat64(offset, true);
  #|}
