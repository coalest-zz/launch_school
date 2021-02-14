=begin
create a new array the hold the sums
iterate through the array
first value = first value
sum the sum array
return the value  
=end

def sum_of_sums(array)
  sums = []
  array.each_with_index do |_, i|
    sums[i] = array[0..i].reduce(:+)
  end
  sums.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35