puts "Please give me two numbers!"
num_1 = gets.chomp.to_i
num_2 = gets.chomp.to_i
puts "Thanks! Now what would you like to do with those numbers?/n Type +,*,-, or /"
type = gets.chomp
case type
when "+" then puts "Your result is #{num_1+num_2}"
when "*" then puts "Your result is #{num_1*num_2}"
when "/" then puts "Your result is #{num_1.to_f/num_2.to_f}"
when "-" then puts "Your result is #{num_1-num_2}"
else 
  puts "Sorry, that's not a valid operation."
end