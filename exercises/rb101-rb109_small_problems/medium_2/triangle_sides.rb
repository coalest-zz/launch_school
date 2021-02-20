=begin
-----------------------INSTRUCTIONS--------------------------------------
A triangle is classified as follows:

    equilateral All 3 sides are of equal length
    isosceles 2 sides are of equal length, while the 3rd is different
    scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides
must be greater than the length of the longest side, and all sides must
have lengths greater than 0: if either of these conditions is not
satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as
arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
:invalid depending on whether the triangle is equilateral, isosceles,
scalene, or invalid.

--------------------------PROBLEM----------------------------------------

Input: three numbers (integer or float)

Output: a symbol (type of triangle or invalid)

---------------------------RULES-----------------------------------------
Explicit: see above

Implicit: 

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

define a method that takes three numbers as the arguments
  return invalid the numbers cannot be a triangle
    check if all sides are greater than zero
    sum of two shortest sides must be greater than third side

  check to see if all three sides are equal
    return equilateral
  check to see if two sides are equal
    return isosceles
  otherwise
    return scalene
end

=end

require 'pry'

def triangle(s1, s2, s3)
  sides = [s1.to_f, s2.to_f, s3.to_f]
  if sides.any?(0) || (sides.min(2).sum <= sides.max)
    return :invalid
  end
  # binding.pry
  case sides.uniq.count
  when 1
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene
  end
end

p triangle(3.0, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid