///|
extern "wasm" fn _f32_store(offset : Int, value : Float) =
  #|(func (param i32) (param f32)
  #| local.get 0
  #| local.get 1
  #| f32.store)

///|
pub fn f32_store(memory? : Memory = 0, offset : Int, value : Float) -> Unit {
  ignore(memory)
  _f32_store(offset, value)
}

///|
extern "wasm" fn _f32_load(offset : Int) -> Float =
  #|(func (param i32) (result f32)
  #| local.get 0
  #| f32.load)

///|
pub fn f32_load(memory? : Memory = 0, offset : Int) -> Float {
  ignore(memory)
  _f32_load(offset)
}
