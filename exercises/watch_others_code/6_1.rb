=begin
-----------------------INSTRUCTIONS--------------------------------------
You are going to be given an array of integers. Your job is to take that
array and find an index N where the sum of integers to the left of N is
equal to the sum of the integers to the right of N. If there is no index
that would make this happen, return -1.

--------------------------PROBLEM----------------------------------------

Input: array

Output: integer

---------------------------RULES-----------------------------------------
Explicit: 
return -1 if there is no index where the left and right side sums equals the same
return the index where the left and right sums equal the same
elements will be integers

Implicit:
elements of array can be negative or positive integers
don't index the element of the index you're looking at

Question:
empty array will return -1?

--------------------------EXAMPLES---------------------------------------
Let's say you are given the array [1,2,3,4,3,2,1]:
Your method would return the index 3, because at the 3rd position of this
array, the sum of the left side of the index [1,2,3] and the sum of the
right side of the index [3,2,1] both equal 6.

Let's say you are given [20,10,-80,10,10,15,35]
At index 0 the left side is []
the right side is [10,-80,10,10,15,35]
They are both equal to 0.
So return index 0

-----------------------DATA STRUCTURE------------------------------------
arrays

----------------------------ALGO-----------------------------------------

[1,2,3,4,3,2,1]
if [].sum == [2,3,4,3,2,1].sum
  return index 0
array[0, 0] left
array[1, 6] right
if [1].sum == [3,4,3,2,1].sum
  return index 1
array[0,1] left
array[2, 5] right

array[0,2] left
array [3, 4] right

array[0,7]
array[8,0]
until index == the length of array minus 1

def a method that will take one array as an argument
  initialize a counter to 0
  start a loop
    break the loop if counter is equal to length of array
    if left side and right side sums are equal
      return the counter
    increment the counter
  return -1
    end
=end

def find_even_index(array)
  0.upto(array.size - 1) do |i|
    left = array[0, i]
    right = array[(i + 1), (array.size - i - 1)]
    return i if left.sum == right.sum
  end
  -1
end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
