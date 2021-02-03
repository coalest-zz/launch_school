=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that calculates and returns the index of the first Fibonacci number 
that has the number of digits specified as an argument. 
(The first Fibonacci number has index 1.)
--------------------------PROBLEM----------------------------------------

Input: integer (the number of digits)
Output: integer (the index of the first number that has that many digits)

---------------------------RULES-----------------------------------------
Explicit: find the index of the first number in the fib series that has that many digits

Implicit: - probably dont need to check that input is a positive integer. 
          - is it possible that a number of digits is too big?

--------------------------EXAMPLES---------------------------------------
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

----------------------------ALGO----------------------------------------
- create the fib sequence
  - create a loop to iterate
  - add the previous two numbers to get the next number
- check to see if the current number meets the required number of digits
  - if it does, return the index (remember the first number starts at index 0)
  - if it doesn't, add another number, ad infinitum
=end

def find_fibonacci_index_by_length(num_digits)
  first = 1
  second = 1
  counter = 3
  loop do 
    sum = first + second
    return counter if sum.to_s.size == num_digits
    counter += 1
    first, second = second, sum
  end
end

puts find_fibonacci_index_by_length(2)         # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847