# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end

# def rotate_rightmost_digits(int, digs)
#   arr_int = int.digits.reverse
#   first = arr_int[0..(arr_int.size - digs - 1)]
#   second = rotate_array(arr_int[-digs..-1])
#   if arr_int.size == digs
#     result = second
#   else
#     result = first + second
#   end
#   result.join.to_i
# end

# def max_rotation(num)
#   digs = num.digits.size
#   result = []
#   (digs - 1).times do |i|
#     num = rotate_rightmost_digits(num, digs - i)
#   end
#   num
# end

=begin
5.times
1st it
rotate(735291, 6)
num = 
2nd it
rotate(352917, 5)
=end

def max_rotation(num)
  counter = 0
  array = num.digits.reverse

  loop do
    array << array.delete_at(counter)
    counter += 1
    break if counter == array.size
  end
  
  array.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845