require 'benchmark'

def fib(n)
  return n if n <= 1
  fib(n - 1) + fib(n - 2)
end

Benchmark.bm 3 do |r|
  r.report "fib" do
    fib(ARGV[0].to_i)
  end
end
