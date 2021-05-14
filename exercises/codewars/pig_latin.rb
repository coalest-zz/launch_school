=begin
-----------------------INSTRUCTIONS--------------------------------------
Move the first letter of each word to the end of it, then add "ay" to the
end of the word. Leave punctuation marks untouched.

pigIt('Pig latin is cool') # igPay atinlay siay oolcay
pigIt('Hello world !') # elloHay orldway !

--------------------------PROBLEM----------------------------------------

Input: string

Output: string (same length as input)

---------------------------RULES-----------------------------------------
Explicit: 
move the 1st letter of each word to the end of it
then add ay to the end of each word
leave puncutation untouched

Implicit: 
keep the old capitalization

--------------------------EXAMPLES---------------------------------------
  don't
  on'td

  don't!
  on'td!

  I hope to pass this assessment.
  ssessmentaay.

----------------------------ALGO-----------------------------------------


  separate string into words
  iterate through words
    move first letter to end of each word
    add 'ay' to the end of each word
  join the words back together





=end

def pigIt(string)
  words = string.split(' ').map do |word|
    if word.match(/[\.?!]/)
      word[1..-2] + word[0] + word[-1]
    else
      word[1..-1] + word[0]
    end
  end
  words.join(' ').gsub(/([A-Za-z])([^a-zA-Z']|\z)/, '\1ay\2')
end


p pigIt('Pig latin is cool') # igPay atinlay siay oolcay
p pigIt('Hello world!') # elloHay orldway!
p pigIt("The word spins round and round. Resistance isn't futile.")