def fib(upper_limit)
  arr = []
  arr[0] = 1
  arr[1] = 1
  for i in 2..upper_limit
    arr[i] = arr[i-1] + arr[i-2] 
    break if arr[i] > upper_limit
  end
  arr.pop
  arr
end

array = fib(3999999).select { |i| i % 2 == 0}
p array.sum

#  1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...