=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that computes the difference between the square of the sum
of the first n positive integers and the sum of the squares of the first
n positive integers.

--------------------------PROBLEM----------------------------------------

Input: integer (positive)

Output: integer (sum square - square sum)

---------------------------RULES-----------------------------------------
Explicit: return (sum square - square sum)

Implicit: 

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

define method that takes one integer as an arg
  compute sum square
    create an array that goes from 1 to the input integer
    sum the array
    square that sum
  compute square sum
    initialize an array to hold results
    square 1 and put it in array
    square 2 and put it in array
    ...until you get to n (n will be last num)
    take the sum of the array
  return (sum square - square sum)
=end

def sum_square_difference(num)
  integer_array = (1..num).to_a

  sum_squares = (integer_array.sum)**2
  square_sums = integer_array.map { |n| n ** 2 }.sum

  sum_squares - square_sums
end

p sum_square_difference(3) ==  22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) ==  2640
p sum_square_difference(1) ==  0
p sum_square_difference(100) ==  25164150