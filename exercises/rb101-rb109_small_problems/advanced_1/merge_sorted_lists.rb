=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes two sorted Arrays as arguments, and returns a
new Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result
array. You must build the result array one element at a time in the
proper order.

Your solution should not mutate the input arrays.
--------------------------PROBLEM----------------------------------------

Input: two arrays

Output: one array

---------------------------RULES-----------------------------------------
Explicit: 
you cannot mutate the input arrays
you cannot sort the result array

Implicit: 

--------------------------EXAMPLES---------------------------------------
merge([1, 1, 3], [2, 2])# == [1, 1, 2, 2, 3]

----------------------------ALGO-----------------------------------------
make a duplicate of the first array
iterate through the second array
  get the size of dup1 - 1
  look at 0 and 1 and 1 and 2
  if num is greater than dup[0] and lessthan or equal to dup[1]
    insert it
  otherwise
    keep going
  look at 1 and 2
  if greater and less than
    insert it
  else
    add it at the end

=end
require 'pry'

def merge(arr1, arr2)
  dup1 = arr1.dup
  arr2.each do |num|
    if dup1.all? { |el| el > num}
      dup1.unshift(num)
    elsif dup1.all? { |el| el < num}
      dup1 << num
    else
      0.upto(dup1.size - 1) do |i|
        if num >= dup1[i] && num <= dup1[i + 1]
          dup1.insert(i + 1, num)
          break
        end
      end
    end
  end
  dup1
end

a = [1, 5, 9]
b = [2, 6, 8]
p merge(a, b)# == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2])# == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
p merge([1, 4, 5], [])# == [1, 4, 5]