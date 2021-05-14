=begin
------------------------INSTRUCTIONS-------------------------------------
Write a recursive method that computes the nth Fibonacci number, where
nth is an argument to the method.

--------------------------PROBLEM----------------------------------------
Input: an integer n  (nth fibonacci number)

Output: integer
---------------------------RULES-----------------------------------------
Explicit: 
The Fibonacci series is a sequence of numbers starting with 1 and 1 where
each number is the sum of the two previous numbers: the 3rd Fibonacci
number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so
on. In mathematical terms:

Implicit: 

--------------------------EXAMPLES---------------------------------------


-------------------------DATA/ALGO---------------------------------------

3 rules:
call themselvers
use the return value
have an end condition

return value: fib (n-1) + fib( n -2 )
return 1 if n <= 2

without recursion:
  first num = 1
  second num = 1
  initialize a counter to 2
  start a loop
    break when counter is equal to input num
    sum is eual to first + second
    first is eual to second
    second num is equal to sum
    increment the counter
=end

def fibonacci(n)
  return 1 if n == 1 || n == 2
  first_num = 1
  second_num = 1
  counter = 2
  loop do
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
    counter += 1
    break if counter >= n
  end
  second_num
end

def fibonacci_last(n)
  fibonacci(n) % 10
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4