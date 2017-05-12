fizzbuzz = fn
  (0,0,_) -> IO.puts("FizzBuzz")
  (0,_,_) -> IO.puts("Fizz")
  (_,0,_) -> IO.puts("Buzz")
  (_,_,output) -> IO.puts("#{output}")
end

fizzbuzz.(0,0,"output")
fizzbuzz.(0,1,"output")
fizzbuzz.(1,0,"output")
fizzbuzz.(1,1,"testing")

mathbuzz = fn (n) -> fizzbuzz.(rem(n,3),rem(n,5),n) end

mathbuzz.(10)
mathbuzz.(11)
mathbuzz.(12)
mathbuzz.(13)
mathbuzz.(14)
mathbuzz.(15)
mathbuzz.(16)
