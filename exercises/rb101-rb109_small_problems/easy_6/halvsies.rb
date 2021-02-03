=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes an Array as an argument, and returns two Arrays 
(as a pair of nested Arrays) that contain the first half and second half 
of the original Array, respectively. If the original array contains an 
odd number of elements, the middle element should be placed in the first 
half Array.

--------------------------PROBLEM----------------------------------------

Input: one array
Output: a pair of nested arrays

---------------------------RULES-----------------------------------------
Explicit: split the original array into a pair of arrays. 
          if the original array is odd, the middle el belongs in arr1

Implicit: an empty array as input should yield a pair of nested empty arrays

--------------------------EXAMPLES---------------------------------------
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

----------------------------ALGO----------------------------------------
create two new arrays nested
iterate through all the elements
put the first half (maybe +1) into the first array
put the second half into the second array

create two empty arrays for left and right
if length is even, and i/length is 0.5 or lower
  it goes in the left array
otherwise
  it goes in the right array

if length is odd, 
=end

# hack and slash
# def halvsies(arr)
#   left = []
#   right = []
#   arr_size = arr.length.to_f
#   if arr.size != 0
#     left = arr[0..(arr_size/2 - 1)]
#     right = arr[(arr_size/2)..(arr.last + 1)]
#   end
#   [left, right]
# end

def halvsies(array)
  half_num = (array.size.to_f/2).round(half: :up)
  first = array.first(half_num)
  second = array.last(array.size - half_num)
  [first, second]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]