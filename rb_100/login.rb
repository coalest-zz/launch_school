PASSWORD = "hunter2"
USER = "Skrzyp"
loop do
  puts ">> Please enter your user name:"
  username_attempt = gets.chomp
  puts ">> Please enter your password:"
  password_attempt = gets.chomp
  break if password_attempt == PASSWORD && username_attempt == USER
  puts "Authorization failed!"
end
puts "Welcome!"
