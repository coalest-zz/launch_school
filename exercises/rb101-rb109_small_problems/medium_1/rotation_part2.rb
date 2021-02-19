=begin
-----------------------INSTRUCTIONS--------------------------------------

--------------------------PROBLEM----------------------------------------

Input: 

Output: 

---------------------------RULES-----------------------------------------
Explicit: 

Implicit: 

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(int, digs)
  arr_int = int.digits.reverse
  first = arr_int[0..(arr_int.size - digs - 1)]
  second = rotate_array(arr_int[-digs..-1])
  if arr_int.size == digs
    result = second
  else
    result = first + second
  end
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917