print 'What is your age? '
age = gets.chomp

print 'At what age would you like to retire? '
dream_retirement_age = gets.chomp

time = Time.new
current_year = time.year
working_years_left = dream_retirement_age.to_i - age.to_i
retirement_year = working_years_left + current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{working_years_left} years of work to go!"

# Expected output:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!