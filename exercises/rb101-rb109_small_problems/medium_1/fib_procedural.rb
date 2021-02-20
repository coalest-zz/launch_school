def fibonacci(n)
  first = 1
  second = 1
  3.upto(n) do
    sum = first + second
    first = second
    second = sum
  end
  second
end

p fibonacci(20) == 6765
p fibonacci(100) #== 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501