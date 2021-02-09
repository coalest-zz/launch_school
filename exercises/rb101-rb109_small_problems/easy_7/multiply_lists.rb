=begin 
create new array
iterate through each index of one area or both
multiply numbers
add to new array
return new array
=end

def multiply_list(arr1, arr2)
  multiplied = []
  counter = 0
  loop do
    multiplied[counter] = arr1[counter] * arr2[counter]
    counter += 1
    break if counter == arr1.size
  end
  multiplied
end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |a| a[0]*a[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]