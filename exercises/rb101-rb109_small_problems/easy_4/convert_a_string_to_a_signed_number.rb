def string_to_integer(string)
  sum = 0
  string.bytes.each_with_index do |n, i|
    n -= 48 
    sum += n * (10 ** (string.length - i - 1))
  end
  sum
end

# def string_to_signed_integer(string)
#   if string.chars.first == '+'
#     num_string = string.delete_prefix('+')
#     string_to_integer(num_string)
#   elsif string.chars.first == '-'
#     num_string = string.delete_prefix('-')
#     -string_to_integer(num_string)
#   else
#     string_to_integer(string)
#   end
# end



puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

# Solution:
# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

#Further exploration. Not sure if good??:
def string_to_signed_integer(string)
  string = string [1..-1] if string[0] == '+'
  if string[0] == '-'
    -string_to_integer(string[1..-1])
  else          
    string_to_integer(string)
  end
end