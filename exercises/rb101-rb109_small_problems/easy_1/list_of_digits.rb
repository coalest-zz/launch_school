def digit_list(num)
  arr = []
  until num == 0
    arr.unshift(num % 10)
    num /= 10
  end
  arr
end



p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true

#Idiomatic Ruby solution:
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

# which is the same as: 

def digit_list(number)
  number.to_s.chars.map { |char| char.to_i }
end


