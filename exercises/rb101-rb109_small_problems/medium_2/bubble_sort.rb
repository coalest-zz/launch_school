=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes an Array as an argument, and sorts that Array
using the bubble sort algorithm as just described. Note that your sort
will be "in-place"; that is, you will mutate the Array passed as an
argument. You may assume that the Array contains at least 2 elements.

--------------------------PROBLEM----------------------------------------

Input: array of at least two elements (elements can be numbers or strings)

Output: the same array sorted

---------------------------RULES-----------------------------------------
Explicit: iterate through the array comparing two elements at a time
          swap elements that are in the wrong order
          finished when no switches are made when iterating through

Implicit: I'm assuming I'm allowed to use the spaceship operator for strings

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

define the method that takes one arr as an arg
  start an loop
    initialize a counter to 0
    start inner iteration to loop through the array
      compare first two elements
        if they are in order or equal to one another
          do nothing
        if they are out of order
          switch them, mutating original array
          increment the counter
      keep going till end of array
    break if counter is equal to zero
  return original array

=end
require 'pry'

def bubble_sort!(arr)
  comparisons = 0
  n = arr.length
  loop do
    counter = 0
    # Original solution:

    # (arr.length - 1).times do |i|
    #   comparisons += 1
    #   if arr[i] > arr[i + 1]
    #     arr[i], arr[i + 1] = arr[i + 1], arr[i]
    #     counter += 1
    #   end
    # end

    # Refactored with optimization
    for i in 0..(n - 2)
      comparisons += 1
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        counter += 1
      end
    end
    n -= 1
    break if counter == 0
  end
  p comparisons
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Comments confused output of the method with return of method. This mutates array, so return nil