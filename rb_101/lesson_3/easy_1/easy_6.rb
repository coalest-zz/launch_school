famous_words = "seven years ago..."

famous_words = "Four score and " + famous_words
famous_words = famous_words.insert(0, "Four score and ")
famous_words = famous_words.prepend("Four score and ")

puts famous_words

# Didn't think about this answer from the solution
# "Four score and " << famous_words
