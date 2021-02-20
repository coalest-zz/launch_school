=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a string as argument, and returns true if all
parentheses in the string are properly balanced, false otherwise. To be
properly balanced, parentheses must occur in matching '(' and ')' pairs.

--------------------------PROBLEM----------------------------------------

Input: string with any number of parantheses

Output: boolean true or false depending on whether they 'match'

---------------------------RULES-----------------------------------------
Explicit: must occur in matching '(' ')' pairs

Implicit: left side has to come before right side
          if there is a left side there must be a right side
          there could be two left sides and then two right sides
          if theres no parantheses return true

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

regex
match anything ( anything ) any number of times 

create a counter when for left sides
subtract from the counter when you get a right side
if the counter is negative return false
return true at end

=end

require 'pry'

def balanced?(string)
  counter = 0
  string.chars.each do |char|
    if char =~ /[\(\{\[]/
      counter += 1
    elsif char =~ /[\)\}\]]/
      counter -= 1
    end

    return false if counter < 0
  end
  # binding.pry
  counter.zero? && string.chars.count("'").even? && string.chars.count("\"").even?
end

p balanced?('What [is] this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?("Don't say that") == false
p balanced?("Did you call me a \"loser\"?") == true