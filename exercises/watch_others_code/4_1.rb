=begin
-----------------------INSTRUCTIONS--------------------------------------
Given 2 strings, your job is to find out if there is a substring that appears
in both strings. You will return true if you find a substring that appears
in both strings, or false if you do not. We only care about substrings that
are longer than one letter long.

--------------------------PROBLEM----------------------------------------

Input: two string objects

Output: boolean (true if there is a common substring, otherwise false)

---------------------------RULES-----------------------------------------
Explicit: 
return false if there are no 2 (or 2+) substrings in common between both strings


Implicit: 
substrings can occur anywhere in the strings
empty strings return false
if one string is empty, return false

--------------------------EXAMPLES---------------------------------------


-----------------------DATA STRUCTURE------------------------------------
strings to arrays of characters to boolean

----------------------------ALGO-----------------------------------------

initialize array of substrings
iterate through the shorter string
  capture every substring that is two continuous letters
    start at 0, put string[0..1], [1..2] until the end of the string

check to see if any of the substrings are in both strings

=end

def substring_test(str1, str2)
  substrings = []
  short_str = str1.size <= str2.size ? str1 : str2
  (0..(short_str.size - 2)).each do |i|
    substrings << short_str[i..(i + 1)].downcase
  end
  p substrings
  substrings.each do |str|
    return true if str1.downcase.include?(str) && str2.downcase.include?(str)
  end
  false
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', '111t') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragislisticexpialidocious', 'SoundOfItIsAtrocious') == true