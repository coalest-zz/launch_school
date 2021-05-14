=begin
-----------------------INSTRUCTIONS--------------------------------------
separate a list into individual arrays

--------------------------PROBLEM----------------------------------------

Input: 1 array with  n elements

Output: n arrays with 1 element in each
        each sub array nested in a pair

---------------------------RULES-----------------------------------------
Explicit: 

Implicit: 
dont sort yet
--------------------------EXAMPLES---------------------------------------
[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]

----------------------------ALGO-----------------------------------------

def a method that takes one array

return an array with two arrays inside n/2 elements in each

merge(array[0..middle]), merge(array[middle..end])

[[[9], [5]], [[7], [1]]]
array[0] = [[9], [5]]
array[0][0] = [9]
=end

require 'pry'

def merge_sort(array)
  return array if array.size == 1
  mid = array.size / 2
  arr1 = merge_sort(array[0..(mid - 1)])
  arr2 = merge_sort(array[mid..-1])
  merge_arrays(arr1, arr2)
end

def merge_arrays(arr1, arr2)
  dup1 = arr1.dup
  arr2.each do |num|
    if dup1.all? { |el| el > num}
      dup1.unshift(num)
    elsif dup1.all? { |el| el < num}
      dup1.push(num)
    else
      0.upto(dup1.size - 1) do |i|
        if num >= dup1[i] && num <= dup1[i + 1]
          dup1.insert(i + 1, num)
          break
        end
      end
    end
  end
  dup1
end

# def merge_back(array)
#   return array if array.size == 1

#   # merge_arrays(merge_arrays(array[0][0], array[0][1]), merge_arrays(array[1][0], array[1][1]))
# end


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]