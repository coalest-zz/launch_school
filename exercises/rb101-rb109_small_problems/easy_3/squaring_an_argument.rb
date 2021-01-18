def multiply(num1, num2)
  num1*num2
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64

#Further exploration:
def power(num, n)
  total = 1
  n.downto(1) { total = multiply(total, num) }
  # until n == 0
  #   total = multiply(total, num)
  #   n -= 1
  # end
  total
end

puts power(2, 5)