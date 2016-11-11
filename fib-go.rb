require 'benchmark'
require "ffi"

module Fib
  extend FFI::Library
  ffi_lib "fib.so"
  attach_function :fib, [:uint], :uint
end

Benchmark.bm 3 do |r|
  r.report "fib" do
    Fib.fib(ARGV[0].to_i)
  end
end
