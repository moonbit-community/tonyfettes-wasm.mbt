///|
pub extern "js" fn f32_store(
  memory? : Memory = memory_default,
  offset : Int,
  value : Float,
) =
  #|(memory, offset, value) => {
  #|  return new DataView(memory.buffer).setFloat32(offset, value, true);
  #|}

///|
pub extern "js" fn f32_load(
  memory? : Memory = memory_default,
  offset : Int,
) -> Float =
  #|(memory, offset) => {
  #|  return new DataView(memory.buffer).getFloat32(offset, true);
  #|}
