choice = nil
loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  choice = gets.chomp.to_i
  break if choice >= 3
  puts "That's not enouch lines."
end
choice.times {puts "Launch school is the best!"}