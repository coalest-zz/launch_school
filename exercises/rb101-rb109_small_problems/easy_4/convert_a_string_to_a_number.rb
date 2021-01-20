def string_to_integer(string)
  sum = 0
  string.bytes.each_with_index do |n, i|
    n -= 48 
    sum += n * (10 ** (string.length - i - 1))
  end
  sum
end

DIGITS = {
  '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0,
}

def string_to_integer(string)
  num_array = string.chars.map do |char|
    DIGITS[char]
  end
  
  sum = 0
  num_array.each_with_index do |n, i|
    sum += n * (10 ** (string.length - i - 1))
  end
  sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# Further exploration:
HEX_DIG = {
  '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
  'F' => 15, 
}

def hexadecimal_to_integer(string)
  num_array = string.chars.map do |char|
    HEX_DIG[char.upcase]
  end
  
  sum = 0
  num_array.each_with_index do |n, i|
    sum += n * (16 ** (string.length - i - 1))
  end
  sum
end

puts hexadecimal_to_integer('4D9f') == 19871