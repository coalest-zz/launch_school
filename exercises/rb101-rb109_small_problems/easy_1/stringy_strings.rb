def stringy(int)
  arr = []
  int.times do |i|
    if i % 2 == 0
      arr[i] = 1
    else
      arr[i] = 0
    end
  
  arr.join
end

puts stringy(6, 0) #== '101010'
puts stringy(9, 0) #== '101010101'
puts stringy(4, 1) #== '1010'
puts stringy(7) #== '1010101'

# Solution: 
# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end

# Comments for self: choose better variable names next time. numbers and size are better.

# Further exploration:
def stringy(size, start = 1)
  numbers = []

  size.times do |index|
    if start = 1
      number = index.even? ? 1 : 0
    elsif start = 0
      number = index.even? ? 0 : 1
    end
    numbers << number
  end

  numbers.join
end