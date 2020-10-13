def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def readnumber
  puts ">> Please enter a positive or negative integer:"
  string = gets.chomp
  return string.to_i if valid_number?(string)
  puts ">> Invalid input. Only non-zero integers are allowed."
end

int_a = nil
int_b = nil

loop do
  int_a = readnumber
  int_b = readnumber
  break if (int_a < 0 && int_b > 0) || (int_a > 0 && int_b < 0)
  puts ">> Sorry. One integer must be positive, one must be negative. Please start over."
end

result = int_a + int_b
puts "#{int_a} + #{int_b} is #{result}"