def is_odd?(num)
  (num % 2 == 1) || ((-num) % 2 == 1)
end

# More elegant solution becuz ruby used module not remainder for %

# def is_odd?(number)
#   number % 2 == 1
# end

# Another option 
def is_odd?(num)
  num.remainder(2) == 1  || num.remainder(2) == -1
end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true