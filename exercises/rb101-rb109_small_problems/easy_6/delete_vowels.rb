=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.
--------------------------PROBLEM----------------------------------------

Input: array of string, percent string

Output: array with same string values except with a e i o u removed 

---------------------------RULES-----------------------------------------
Explicit: remove a e i o u 

Implicit: - return is also a %w
          - need this to work on caps
          - when an element is all vowels it prints an empty string
          - the example with all vowels is an array and not a %w

--------------------------EXAMPLES---------------------------------------
remove_vowels(%w(a})) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

----------------------------ALGO----------------------------------------
- create a method with a array of strings passed as a parameter
- 
- try to remove the a e i o u from the first example only with the delete method 
- maybe the percent string doesn't as the output, the p method
- do I want to shovel thsi into an emoty string
- return that string 



=end

def remove_vowels(array)
  array.map do |string|
    string.delete('aeiouAEIOU')
  end
end 

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
