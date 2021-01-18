def multisum(number)
  multiples = []
  1.upto(number) do |i| 
    if x % 3 == 0 || x % 5 == 0
      multiples << i
    end
  end
  multiples.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168