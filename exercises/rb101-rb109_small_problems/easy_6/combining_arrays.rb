=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes two Arrays as arguments, and returns an Array 
that contains all of the values from the argument Arrays. There should be 
no duplication of values in the returned Array, even if there are 
duplicates in the original Arrays.

--------------------------PROBLEM----------------------------------------

Input: two arrays
Output: one array

---------------------------RULES-----------------------------------------
Explicit: combine both arrays into one. no duplication.

Implicit: the resulting array should be sorted from smallest to largest
          creating a new array
          will the elements in the array always be integers/numbers?

--------------------------EXAMPLES---------------------------------------
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

----------------------------ALGO----------------------------------------
create a new array
add the values from the first array
add the vales from the second array
remove duplicates
sort
=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq.sort
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# LS Solution
def merge(array_1, array_2)
  array_1 | array_2
end
