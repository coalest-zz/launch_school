=begin
-----------------------INSTRUCTIONS--------------------------------------
Given an array of elements. Return every possible permutation of those
elements in the array.

--------------------------PROBLEM----------------------------------------

Input: an array of 0+ elements

Output: an array containing subarrays of every possible permutation

---------------------------RULES-----------------------------------------
Explicit: 
no repeats in the output
empty array returns an empty array

Implicit: 
there should be n! elements in the return array if given an array of n elements

--------------------------EXAMPLES---------------------------------------


-----------------------DATA STRUCTURE------------------------------------
arrays

----------------------------ALGO-----------------------------------------



=end

p permute([]) == []
p permute([1]) == [[1]]
p permute([1, 2]) == [[1, 2], [2, 1]]
p permute([1, 2, 3]) == [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
