=begin
create a get noun/verb/adj program

invoke it four times

output a sentence with those in a sentence
=end

def get_word(part_of_sentence)
  print "Enter a #{part_of_sentence}: "
  gets.chomp
end

noun = get_word('noun')
verb = get_word('verb')
adj = get_word('adjective')
adverb = get_word('adverb')

puts ''
puts "Time to #{verb} your #{adj} #{noun} #{adverb} to school"
puts "lol"