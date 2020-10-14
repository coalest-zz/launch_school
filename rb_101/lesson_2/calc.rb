puts 'Please give me two numbers!'
num1 = gets.chomp
num2 = gets.chomp
puts 'Thanks! Now what would you like to do with those numbers?/n Type +,*,-, or /'
type = gets.chomp
case type
when '+' then puts "Your result is #{num1.to_i + num2.to_i}"
when '*' then puts "Your result is #{num1.to_i * num2.to_i}"
when '/' then puts "Your result is #{num1.to_f / num2.to_f}"
when '-' then puts "Your result is #{num1.to_i - num2.to_i}"
else
  puts "Sorry, that's not a valid operation."
end
