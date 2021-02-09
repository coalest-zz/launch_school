=begin
create a new empty array
iterate through the longer arr
multiply the first element by each element in the other arr and add it to the new array
repeat
return the new array
=end

def multiply_all_pairs(arr1, arr2)
  multiples = []
  arr1.each do |element|
    arr2.each do |el|
      multiples << (element * el)
    end
  end
  multiples.sort
end
    

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]