def ordinal_ending(num)
  ending = num % 10
  case ending 
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

inputs = []
5.times do |index|
  ending = ordinal_ending(index + 1)
  puts "==> Enter the #{index+1}#{ending} number:"
  inputs[index] = gets.chomp
end

numbers = inputs.map(&:to_i)

puts "Enter the last number: "
last = gets.to_i

if numbers.include?(last)
  puts "the number #{last} appears in #{numbers}"
else
  puts "the number #{last} doesn't appear in #{numbers}"
end