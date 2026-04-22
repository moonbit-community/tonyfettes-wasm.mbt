///|
extern "wasm" fn f64_store_ffi(offset : Int, value : Double) =
  #|(func (param i32) (param f64)
  #| local.get 0
  #| local.get 1
  #| f64.store)

///|
pub fn f64_store(memory? : Memory = 0, offset : Int, value : Double) -> Unit {
  ignore(memory)
  f64_store_ffi(offset, value)
}

///|
extern "wasm" fn f64_load_ffi(offset : Int) -> Double =
  #|(func (param i32) (result f64)
  #| local.get 0
  #| f64.load)

///|
pub fn f64_load(memory? : Memory = 0, offset : Int) -> Double {
  ignore(memory)
  f64_load_ffi(offset)
}
