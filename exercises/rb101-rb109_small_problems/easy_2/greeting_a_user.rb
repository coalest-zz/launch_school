print 'What is your name? '
name = gets.chomp

if name.include?('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# Expected output:
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Solution:
# if name[-1] == '!'
#   name.chop!
#   etc...