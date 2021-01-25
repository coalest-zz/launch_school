# def word_sizes(sentence)
#   sentence = sentence.gsub(/[^a-z\s]/i, '')
#   words = sentence.split(" ")
#   hash = words.each_with_object({}) do |word, h|
#     key = word.length
#     h.has_key?(key) ? (h[key] += 1) : (h[key] = 1)
#   end
# end

def word_sizes(sentence)
  words = sentence.split(" ")
  hash = words.each_with_object({}) do |word, h|
    key = word.delete('^a-zA-Z').length
    h.has_key?(key) ? (h[key] += 1) : (h[key] = 1)
  end
end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}