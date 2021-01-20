DIGITS = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(int)
  array = []
  int.digits.each do |dig|
    array << DIGITS[dig]
  end
  p array.reverse.join
end

def integer_to_string(int)
  array = []
  int.digits.each do |dig|
    array << DIGITS[dig]
  end
  p array.reverse.join
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

# Solution:
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

# Further exploration:
# String class methods without a ! that mutate the caller
# << 
# clear
# replace
# insert
# prepend

# can't find any method that ends in an ! and don't have a non-mutating form


Array class 
sort_by! doesn't have a non ! version

Hash class
can't find any methods that end in an ! and don't have a non-destructive form