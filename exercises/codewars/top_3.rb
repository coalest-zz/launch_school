=begin
----------------------INSTRUCTIONS--------------------------------------
Write a function that, given a string of text (possibly with punctuation
and line-breaks), returns an array of the top-3 most occurring words,
in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more
apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should
be lowercased.
Ties may be broken arbitrarily.


If a text contains fewer than three unique words, then either the top-2
or top-1 words should be returned, or an empty array if a text contains
no words.
--------------------------PROBLEM----------------------------------------
Input: a string of text (potentially long with line-breaks etc.)

Output: array of three strings (three most frequent words)
---------------------------RULES-----------------------------------------
Explicit: 
if the input string contains less than 3 words, return top 2, 1 or an empty string
ties can be broken arbitrarily
a word is a string of letters with apostrophes
result words lowercased
matches are case insensitive
return top 3 most frequent words

Implicit: 
punctuation alone is not a word
ignore punctuation 'ddd:' becomes 'ddd'
--------------------------EXAMPLES---------------------------------------
Examples:
top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]
Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input text.
Avoid sorting the entire array of unique words.
----------------------------ALGO-----------------------------------------
option
create a hash and increment it each time we find the same word
return the top three hash keys that have the highest values

def a method that takes one string for an arg
initialize a word count hash
initialize a results array
split the string into words by punctuation/non letter characters (and ')
iterate through the words
  if a word is already in the hash
    increment its value
  if not
    create a hash key value pair with 1 as the value
if the word count has three or fewer pairs, return the keys

take the top three hash keys with the highest values
  put the highest count into the results array
  delete it from the hash
  repeat three times
return results array

=end

def top_3_words(string)
  word_count = {}
  top_3 = []
  words = string.split(/[^a-z']+/i).select { |word| word.match(/[a-z]+/i) }
  words.each do |word|
    word.downcase!
    word_count.has_key?(word) ? word_count[word] += 1 : word_count[word] = 1
  end
  3.times do
    break if word_count.empty?
    highest_count = word_count.max_by { |k, v| v }.first
    top_3 << highest_count
    word_count.delete(highest_count)
  end
  top_3
end

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
