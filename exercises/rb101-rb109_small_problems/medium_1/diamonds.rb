=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that displays a 4-pointed diamond in an n x n grid, where
n is an odd integer that is supplied as an argument to the method. You
may assume that the argument will always be an odd integer.
--------------------------PROBLEM----------------------------------------

Input: odd integer

Output: spaces and stars in the shape of a diamond

---------------------------RULES-----------------------------------------
Explicit: integer equals the number of lines

Implicit: output an empty line first
          number of stars on middle line equals input num

--------------------------EXAMPLES---------------------------------------
diamond(1)

*

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

----------------------------ALGO----------------------------------------

calculate how many stars will be on each line
put it into an array
iterate from 1 up to the number
array << num if number is odd
mirror the array to get the diamond shape

create an array of the number of spaces
num/2 spaces
num/2 - 1 until 0
mirror array

create a loop
output spaces and stars iterating through each array

=end
require 'pry'

# def mirror(array)
#   array + array.reverse[1..-1]
# end

def diamond(num)
  puts ''
  
  0.upto(num/2) do |i|
    if i == 0
      puts '*'.center(num)
      next
    end
    spaces = (i*2 - 1)
    puts ('*' + ' '*spaces + '*').center(num)
  end

  (num/2 - 1).downto(0) do |i|
    if i == 0 && num > 1
      puts '*'.center(num)
      break
    end
    spaces = (i*2 - 1)
    puts ('*' + ' '*spaces + '*').center(num)
  end

end

diamond(5)
# diamond(5)
# diamond(9)