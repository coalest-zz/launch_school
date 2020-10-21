def prompt(message)
  puts "==> #{message}"
end

prompt('Please give me one number!')
num1 = gets.chomp

prompt('Please give me a second number!')
num2 = gets.chomp

prompt('Thanks! Now what would you like to do with those numbers?/n Type +,*,-, or /')
operator = gets.chomp

result = case operator
         when '+' 
          then prompt("Your result is #{num1.to_i + num2.to_i}")
         when '*' 
          then prompt("Your result is #{num1.to_i * num2.to_i}")
         when '/' 
          then prompt("Your result is #{num1.to_f / num2.to_f}")
         when '-' 
          then prompt("Your result is #{num1.to_i - num2.to_i}")
         else
          prompt("Sorry, that's not a valid operator.")
         end
