def sum(integer)
  (1..integer).inject(:+)
end

def factorial(integer)
  (1..integer).inject(:*)
end

def valid_input?(input)
  input.to_i.to_s == input && input.to_i > 0
end

puts '>> Please enter an integer greater than 0:'
input = ''

loop do 
  input = gets.chomp
  break if valid_input?(input)
  puts "Sorry, it needs to be a positive integer greater than 1"
end

int = input.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  puts "The sum of the integers between 1 and #{int} is #{sum(int)}."
elsif operation == 'p'
  puts "The product of the integers between 1 and #{int} is #{factorial(int)}."
else 
  puts "Sorry that's not a valid input."
end

# Solution:
# methods used upto(), significantly fewer lines
# 1.upto(integer) { |value| total *= value }

# Or use inject for ruby flavor
# (1..num).inject(:+)
# (1..num).inject(:*)
