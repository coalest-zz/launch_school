=begin
-----------------------INSTRUCTIONS--------------------------------------
Find the length of the longest substring in the given string that is the
same in reverse

As an example, if the input was "I like racecars that go fast", the
substring (racecar) would be length seven.

If the length of the input string is 0. return value should be 0.

--------------------------PROBLEM----------------------------------------

Input: string (empty or greater in size)

Output: integer (longest palindrome in string)

---------------------------RULES-----------------------------------------
Explicit: 
if the input string is empty, return 0.
return the length of the longest palindrome in a given string

Implicit: 
one character is still a palindrome
any character (except spaces) can be part of the palindrome

--------------------------EXAMPLES---------------------------------------


-----------------------DATA STRUCTURE------------------------------------

strings + array

----------------------------ALGO-----------------------------------------

goal: find the longest

ex:baabcd
check to see if baabcd is a palindrome
if yes, return size of baabcd
check to see if baabc or aabcd is a palindrome
if yes, return size of substring
check to see if baab or aabc or abcd is a palindrome
if yes, return size of substring

def a method that takes one string in as an argument
  initiate a counter to 0
  start a loop
    find all substrings that string.length - counter
    check to see if any of them are a palindrome
      if yes, return length of one of those substrings
      if no, keep counting and increment the counter
  break if counter is equal to length of string
  return 0 at end (if no larger palindromes were found, aka empty string)
end

def substrings creater helper method that takes a string, and an integer (length)
  initialize substring array
  iterate through string
    add string[i..length] to array
    add string[i..length+1] to array
    until i + substring length equals length of string
  return array
end

def palindrome checker method
  check if first half of string is equal to second half
    return true if yes
    otherwise false
end

=end

def longest_palindrome(string)
  string = string.gsub(/\s/, '')
  counter = 0
  loop do
    break if counter == string.length
    substrings = find_subs(string, string.length - counter)
    if substrings.any? { |str| palindrome?(str) }
      return substrings[0].length
    end
    counter += 1
  end
  0
end

def find_subs(string, sub_length)
  subs = []
  return [] if sub_length == 0

  (string.length - sub_length + 1).times do |i|
    subs << string[i..(sub_length + i - 1)]
  end

  subs
end

def palindrome?(string)
  string == string.reverse
end

p longest_palindrome("I would like a    racecar that    goes  fast" \
                     " second line")
p longest_palindrome('') == 0
p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj123454321133d') == 9