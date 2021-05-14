=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that displays an 8-pointed star in an nxn grid, where n is
an odd integer that is supplied as an argument to the method. The smallest
such star you need to handle is a 7x7 grid.

--------------------------PROBLEM----------------------------------------

Input: integer (n)

Output: 8 pointed star (n lines of output)

---------------------------RULES-----------------------------------------
Explicit: 
display an 8-pointed star in an n x n grid
smallest integer input will be 7
n will always be odd

Implicit: 
given an integer n, output will be n lines long and n chars long on each line

--------------------------EXAMPLES---------------------------------------
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *
----------------------------ALGO-----------------------------------------

Option #1
hard code a 7 sided star
add lines and padding on sides as needed

Option #2
*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

middle line is always all stars
line above that is 3 stars centered with no spaces 0in between
line about that is 3 stars centered with one space in between
line about that is 3 stars centered with two space in between 7 / 2
line above that is 3 stars centered with (0..n/2 - 1) in between

lines below are just mirrored

(1) define a method that takes one int (>7) as an argument
(2) output the top v
      - start iterating n/2 times
      - iterate over n/2 - 1..0 putting that many spaces in between the 1&2 and 2&3 stars
(4) output a line of n stars
(5) repeat steps 2 and 3 but mirrored

=end

def star(n)
  (n / 2 - 1).downto(0).each do |num|
    puts "*#{' ' * num}*#{' ' * num}*".center(n)
  end

  puts '*' * n

  0.upto(n / 2 - 1).each do |num|
    puts "*#{' ' * num}*#{' ' * num}*".center(n)
  end
end

# star(7)
star(21)
