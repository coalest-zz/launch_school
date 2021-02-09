=begin
input: two arrays with equal elements in them, non empty
output: one array twice as long as previous arrays

alternate elements
start with the first array's element
end with the second arrays last element

algo:
create a new array
add index 0 of arr1 to new array
add index 0 of arr2 to new array
repeat for all elements
return new array
=end

# def interleave(arr1, arr2)
#   long_arr = []
#   counter = 0
#   loop do
#     long_arr[counter*2] = arr1[counter]
#     long_arr[counter*2+1] = arr2[counter]
#     counter += 1
#     break if counter == arr1.size
#   end
#   long_arr
# end

# def interleave(arr1, arr2)
#   long_arr = []
#   arr1.each_with_index do |el, i|
#     long_arr[i*2] = el
#     long_arr[i*2+1] = arr2[i]
#   end
#   long_arr
# end

# def interleave(arr1, arr2)
#   result = []
#   arr1.each_with_index do |el, i|
#     result << el << arr2[i]
#   end
#   result
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']