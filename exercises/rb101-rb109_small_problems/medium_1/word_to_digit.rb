=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a sentence string as input, and returns the same
 string with any sequence of the words 'zero', 'one', 'two', 'three',
  'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string
   of digits.
--------------------------PROBLEM----------------------------------------

Input: string

Output: the same string (mutated)

---------------------------RULES-----------------------------------------
Explicit: turn spelled out numbers into numerics

Implicit: strings might include punctation 'four!' should become 4!
          'Four' should also become 'four'

Questions: What about plurals np. zeroes?

--------------------------EXAMPLES---------------------------------------

word_to_digit('Please call me at five five five one two three four. Thanks.')
 == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
----------------------------ALGO----------------------------------------
create a constant array that contains numbers spelled out.
iterate through the string, replacing each word from the constant into its numeric
return the original string

separate string into words (delimited by spaces) (now in a array)
iterate through the words
if the word is a number
  modify it to be numerical []= will mutate the array
if the word is not a number
  do nothing to it
    join the array together with spaces
return the original string

=end

WORDS = %w(zero one two three four five six seven eight nine)

def word_to_digit(string)
  WORDS.each_with_index do |word, i|
    string.gsub!(/#{word}/i, i.to_s )
  end
  string.gsub!(/(\d.*\d)/) do |text|
    text.split.join
  end
  # (0..9).each_with_index do |num, i|
  #   string.gsub!(/#{num}/i, i.to_s )
  # end
  string
end

# p word_to_digit('Please call me 5 5 5 or five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

def phone(text)
  text.gsub!(/(\d.*\d)/) do |match|
    match.split.join
  end
  text.gsub!(/(\d\d\d)(\d\d\d)(\d\d\d\d)/, '(\1) \2-\3')
end

p phone("A string with my phone number: 5 5 5 1 2 3 4 5 6 7")


# Further exploration:
# Remove the spaces