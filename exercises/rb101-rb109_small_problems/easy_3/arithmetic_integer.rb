puts "==> Enter the first number:"
num1 = gets.to_f

puts "==> Enter the second number:"
num2 = 0
loop do
  num2 = gets.to_f
  break unless num2 == 0
  puts "second number can't be zero. try again"
end

puts "==> #{num1} + #{num2} = #{num1 + num2}"
puts "==> #{num1} - #{num2} = #{num1 - num2}"
puts "==> #{num1} * #{num2} = #{num1 * num2}"
puts "==> #{num1} / #{num2} = #{num1 / num2}"
puts "==> #{num1} % #{num2} = #{num1 % num2}"
puts "==> #{num1} ** #{num2} = #{num1 ** num2}"

# Expected output:
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103