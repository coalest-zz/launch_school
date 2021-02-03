=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes an Array as an argument, and reverses 
its elements. Do not modify the original list.

You may not use Array#reverse or Array#reverse! or previous method
--------------------------PROBLEM----------------------------------------

Input: array with any number of objects. Objects can be anything
Output: a new array with objects in reverse order

---------------------------RULES-----------------------------------------
Explicit: reverse and return a given array 

Implicit: empty array stays empty

--------------------------EXAMPLES---------------------------------------
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true
----------------------------ALGO----------------------------------------
create a new arr
make a loop
create a counter starting at 0
set the first element to be the last element of the original array
set the second element to be the second to last element of the orginal array
keep going to the end
increment the counter
break when the counter reaches the last element
return the new arr
=end

# def reverse(arr)
#   reversed = []
#   counter = 0
#   loop do
#     break if counter >= arr.size
#     reversed[counter] = arr[arr.size - counter - 1]
#     counter += 1
#   end
#   reversed
# end

# def reverse(arr)
#   arr.each_with_object([]) do |el, a|
#     a.unshift(el)
#   end
# end

# def reverse(arr)
#   new_array = []
#   return new_array if arr.empty?
#   arr.inject do |new, word|
#     new_array.unshift(word)
#   end
#   new_array << arr.first
# end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true