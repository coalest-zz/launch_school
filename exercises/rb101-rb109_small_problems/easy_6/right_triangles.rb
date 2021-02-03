=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a positive integer, n, as an argument, and 
displays a right triangle whose sides each have n stars. The hypotenuse 
of the triangle (the diagonal side in the images below) should have one 
end at the lower-left of the triangle, and the other end at the 
upper-right.
--------------------------PROBLEM----------------------------------------

Input: positive integer (n)
Output: n lines of code (consisting of stars and spaces)

---------------------------RULES-----------------------------------------
Explicit: triangle should have n sides
          hypotenuse should end in bottom left and top right

Implicit: first line should be empty

--------------------------EXAMPLES---------------------------------------
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
----------------------------ALGO----------------------------------------
output an empty line
make a loop
print n-1 spaces and then 1 star
print n-2 spaces and then 2 stars
....
print 0 spaces and then n stars
=end

def triangle(n)
  puts ""
  counter = 1
  n.times do 
    puts (" " * (n - counter)) + ('*' * counter)
    counter += 1
  end
end

# LS solution: (easier to read)
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end



# Further exploration
def triangle(n, quadrant = 4)
  puts ""
  case quadrant 
  when 1
    n.times { |i| puts (" " * i) + ('*' * (n - i)) }
  when 2
    n.times { |i| puts ('*' * (n - i))}
  when 3
    n.times { |i| puts ('*' * (i + 1))}
  when 4
    counter = 1
    n.times do 
      puts (" " * (n - counter)) + ('*' * counter)
      counter += 1
    end
  end
end

triangle(5, 1)
triangle(5, 2)
triangle(5, 3)
triangle(5, 4)