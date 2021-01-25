def swap(sentence)
  words = sentence.split(" ")
  words.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(" ")
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

# Further exploration:
# no because we would be reassigning characters in a string won't mutate them.