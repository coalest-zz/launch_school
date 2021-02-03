=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes an Array as an argument, and reverses 
its elements in place; that is, mutate the Array passed into this method. 
The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.
--------------------------PROBLEM----------------------------------------

Input: array with any number of objects. Objects can be anything
Output: the SAME array (mutated) with objects in reverse order

---------------------------RULES-----------------------------------------
Explicit: reverse a given array mutating the original string without using reverse method.

Implicit: - object id stays the same
          - if there is only one object in the array, nothing happens
          - an empty array input should return an empty array

--------------------------EXAMPLES---------------------------------------
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

----------------------------ALGO----------------------------------------
- iterate through the array
  - set a counter equal to the length of the array
  - start a loop
  - take the last component
  - add that component to the beginning
  - take the last component and remove it
  - add it to the second place
  - keep going until you have cycled through all the original elements
  - decrease the counter
  - break when the counter equals zero
- return the array

=end

def reverse!(arr)
  counter = 0
  loop do
    break if counter >= arr.size - 1
    last = arr.pop
    arr.insert(counter, last)
    counter += 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
p reverse!(list) == [] # true
list == [] # true
