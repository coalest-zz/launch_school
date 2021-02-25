=begin
-----------------------INSTRUCTIONS--------------------------------------
The maximum sum subarray problem consists in finding the maxiumum sum of a
contiguous subsequence in an array of integers.

# maxSequence [-2, -1, -3, 4, -1, 2, 1, -5. -4]
# -- should be 6: [4, -1, 2, 1]
# Easy case is when the array is made up of only positive numbers and the
maximum sum is the sum of the whole array. If the array is made up of only
negative numbers, return 0 instead.

# Empty array is considered to have zero greatest sum. note that the empty
array is also a valid subarray.

--------------------------PROBLEM----------------------------------------

Input: array (0+ elements)

Output: integer

---------------------------RULES-----------------------------------------
Explicit: if the array is all positive numbers, take the sum of all numbers.
          if the array is all negative numbers, return zero.
          empty array should return zero.
          otherwise return the maximum sum of a contiguous sequence.

Implicit: contiguguos subarrays could have length of 1 up to entire length of array
          a one number array, will return that num if its positive
          contiguous arrays will always have positive numbers for the first and last sub elements

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

Option 1:
find every contiguous subarry and take their sum
return the highest sum
[-2, -1, -3, 4, -1, 2, 1, -5. -4]
9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1

Option 2:
[-2, -1, -3, 4, -1, 2, 1, -5. -4]
find all the contigious subarrays that have positive numbers on both ends

found all the positive numbers in an array
[0, 0, 0, 1, 0, 1, 1, 0. 0]
only three options to check
index 3 to index 5
index 3 to index 6
index 5 to index 6
[3, 5, 6]

found all the positive numbers in an array
return the indexes of those positive numbers in an array
find all the permuations of those numbers for possible arrays
[3, 5, 6, 8]
33, 35, 36, 38
55, 56, 58
66, 68

find the sum of all those 

return the subarray with the highest sum

=end

require 'pry'

def max_sequence(arr)
  positives = arr.map { |num| num.positive? ? 1 : 0 }
  pos_indexes = []
  positives.each_with_index { |num, i| pos_indexes << i if num == 1 }
  sub_arrays = []
  0.upto(pos_indexes.size - 1) do |i|
    i.upto(pos_indexes.size - 1) do |j|
      sub_arrays << pos_indexes[i..j]
    end
  end
  sub_arrays.map! { |a| a.size > 2 ? [a.first, a.last] : a }
  biggest_sum = 0
  sub_arrays.each_with_index do |a, i|
    if arr[a.first..a.last].sum > biggest_sum
      biggest_sum = arr[a.first..a.last].sum
    end
  end
  biggest_sum
end

p max_sequence([]) == 0
p max_sequence([-2, -1, -3, 4, -1, 2, 1, -5, -4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12