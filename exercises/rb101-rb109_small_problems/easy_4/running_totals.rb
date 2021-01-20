# first element stays the same
# second element equals first plus second 
# third element equals third plus second
# so on
# out put new array


# First solution:
# def running_total(array)
#   sum = 0
#   totals = []
#   array.each do |element|
#     sum += element
#     totals << sum
#   end
#   totals
# end

# Solution with each_with_object
# def running_total(array)
#   sum = 0
#   array.each_with_object([]) do |i , a|
#     sum += i
#     a << sum
#   end
# end

# Solution with inject
def running_total(array)
  new_array = []
  array.inject(0) do |sum, n|
    new_array << sum + n
    sum + n
  end
  new_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []



# # Solution:
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end