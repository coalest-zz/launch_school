DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  array = []
  int.digits.each do |dig|
    array << DIGITS[dig]
  end
  array.reverse.join
end

def signed_integer_to_string(num)
  if num > 0
    '+' + integer_to_string(num)
  elsif num < 0
    '-' + integer_to_string(-num)
  else
    integer_to_string(num)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'


# Solution refactored to only have one method call:
def signed_integer_to_string(number)
  case number <=> 0
  when -1 
    prefix = '-'
    number = -number
  when +1 
    prefix = '+'
  else         
    prefix = ''
  end
  prefix + integer_to_string(number)
end