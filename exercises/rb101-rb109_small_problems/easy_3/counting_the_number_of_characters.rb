print 'Please write word or multiple words: '
input = gets.chomp

num_chars = input.chars.select { |char| char != ' '}.length

puts "There are #{num_chars} character(s) in \"#{input}\"."

# Solution:
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."