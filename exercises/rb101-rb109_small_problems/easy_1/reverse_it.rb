def reverse_sentence(sentence)
  reversed = []

  words = sentence.split

  words.each do |word|
    reversed.unshift(word)
  end

  reversed.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Solution:
# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# I thought I wasn't allowed to use reverse...haha