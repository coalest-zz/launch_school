def factors(number)
  divisor = number
  factors = []

  if divisor <= 0 
    puts "Number must be nonzero and positive."
  end

  loop do 
    break if divisor <= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end
