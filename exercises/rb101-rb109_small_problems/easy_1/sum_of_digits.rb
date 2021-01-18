def sum(number)
  number.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Solution:
# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end