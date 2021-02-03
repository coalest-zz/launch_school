=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method named include? that takes an Array and a search value as 
arguments. This method should return true if the search value is in the 
array, false if it is not. You may not use the Array#include? method in 
your solution.
--------------------------PROBLEM----------------------------------------

Input: one array, and one search value (could be an int or nil)
Output: boolean

---------------------------RULES-----------------------------------------
Explicit: cant use Array#include?
          true if array includes second arg, false if not

Implicit: false if the array is empty
          if search arg is nil, return true if nil is in array, otherwise false

--------------------------EXAMPLES---------------------------------------
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

----------------------------ALGO----------------------------------------
iterate through the array
check if the current value in array is equal to search arg
return true if there is a match
return false if no matches are found
=end

# method 1
def include?(array, value)
  array.each do |element|
    return true if element == value
  end
  false
end
# method 2
def include?(array, value)
  array.select {|element| element == value }.count > 0
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false

#LS Solution
def include?(array, value)
  !!array.find_index(value)
end

