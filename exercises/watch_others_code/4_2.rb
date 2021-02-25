=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a function scramble(str1, str2) that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise return false.

--------------------------PROBLEM----------------------------------------

Input: two strings

Output: boolean (true if str2 chars can be found in str1)

---------------------------RULES-----------------------------------------
Explicit: 
return true if all of str2 chars are found in str1
only lowercase letters will be used. No punctuation or digits

Implicit: 

Questions: 
Empty input string for str2?

--------------------------EXAMPLES---------------------------------------


-----------------------DATA STRUCTURE------------------------------------
string - arrays - bool

----------------------------ALGO-----------------------------------------

(1) Define a method that takes two string args
(2) Get the chars of str2
(3) iterate through each char
  (4) if the character from str2 is in str1
        remove it from str1 and keep going
      otherwise
        return false
(6) otherwise return true at the end

=end

# def scramble(str1, str2)
#   chars = str2.chars
#   chars.each do |char|
#     str1.include?(char) ? str1.sub!(char, '') : (return false)
#   end
#   true
# end

def scramble(str1, str2)
  chars2 = str2.chars
  chars1 = str1.chars
  chars2.each do |char|
    chars1.include?(char) ? chars1.delete_at(chars1.index(char)) : (return false)
  end
  true
end


p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true