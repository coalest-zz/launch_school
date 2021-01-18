# If we list all the natural numbers below 10 that are multiples 
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# 1. Find all the numbers that are multiples of 3 of a given numbers
# 2. Find all the numbers that are multiples of 5 of a given number.
# 3. Merge these two groups together
# 4. find the sum. 

# Method 1t
# def multiples(num, multiple)
#   arr = Array.new(num) { |i| i }
#   arr.select! { |i| i % multiple == 0}
# end

# mult_of_3 = multiples(1000, 3)
# mult_of_5 = multiples(1000, 5)

# mult_of_3_or_5 = (mult_of_3 + mult_of_5).uniq
# p mult_of_3_or_5.sum

# Method 2
# arr = []
# for i in 1..999
#   if (i % 3 == 0) or (i % 5 == 0)
#     arr.push(i)
#   end
# end
# p arr.sum


