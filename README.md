# README

Call a Golang from Ruby.
17.9 times.

```bash
$ go build -buildmode=c-shared -o fib.so fib.go
$ ruby fib.rb 40
          user     system      total        real
fib  13.330000   0.020000  13.350000 ( 13.363410)

$ ruby fib-go.rb 40
          user     system      total        real
fib   0.740000   0.000000   0.740000 (  0.744773)

$ irb
irb(main):001:0> 13.363410 / 0.744773
=> 17.94293026197244
```

