def word_sizes(sentence)
  words = sentence.split(" ")
  words.each_with_object({}) do |word, h|
    key = word.length
    h.has_key?(key) ? (h[key] += 1) : (h[key] = 1)
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}