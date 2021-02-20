def fibonacci_last(n)
  fib = [1, 1]
  3.upto(n) do
    fib = [fib.last, (fib.first + fib.last) % 10]
  end
  fib.last.digits.first
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4

FIB_PATTERN = '011235831459437077415617853819099875279651673033695493257291'
