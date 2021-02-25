=begin
-----------------------INSTRUCTIONS--------------------------------------

Write a method to find the longest common prefix string amongst an array
of strings.

If there is no common prefix return an empty string.
All inputs are lowercase letters a-z

--------------------------PROBLEM----------------------------------------

Input: array of strings

Output: string (possibly empty)

---------------------------RULES-----------------------------------------
Explicit: 
If there is no common prefix return an empty string.
All inputs are lowercase letters a-z

Implicit: 
if first letter doesn't match for all there is no prefix, return ''
if each word is identical i nthe array, return the entire word.

Questions:
What happens if there is only one string in the array? Return that string?

--------------------------EXAMPLES---------------------------------------

Input: ['flower', 'flow', 'flight']
Output: 'fl'

Input: ['dog', 'racecar', 'car']
Output: ''

----------------------------ALGO----------------------------------------

initialize a prefix variable to an empty string
start a loop
  if the first letter of every word is the same
    increment and keep going
  if not, break
  end
  return prefix variable

=end

def common_prefix(array)
  prefix = ''
  i = 0
  loop do
    if array.all? { |word| word[0..i] == array[0][0..i] }
      prefix = array[0][0..i]
    else
      break
    end
    i += 1
    break if i == array[0].size
  end
  prefix
end

p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'race']) == ''
p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
p common_prefix(['throne', 'dungeon']) == ''
p common_prefix(['throne', 'throne']) == 'throne'
p common_prefix(['throne'])