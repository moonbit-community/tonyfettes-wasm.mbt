///|
extern "wasm" fn i64_store_ffi(offset : Int, value : Int64) =
  #|(func (param i32) (param i64)
  #| local.get 0
  #| local.get 1
  #| i64.store)

///|
pub fn i64_store(memory? : Memory = 0, offset : Int, value : Int64) -> Unit {
  ignore(memory)
  i64_store_ffi(offset, value)
}

///|
extern "wasm" fn i64_load_ffi(offset : Int) -> Int64 =
  #|(func (param i32) (result i64)
  #| local.get 0
  #| i64.load)

///|
pub fn i64_load(memory? : Memory = 0, offset : Int) -> Int64 {
  ignore(memory)
  i64_load_ffi(offset)
}
