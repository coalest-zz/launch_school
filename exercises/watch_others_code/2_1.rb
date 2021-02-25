
#################################Video 2#####################################

=begin
-----------------------INSTRUCTIONS--------------------------------------
You have to create a method that takes a positive integer number and
returns the next bigger number formed by the same digits.

--------------------------PROBLEM----------------------------------------

Input: integer

Output: integer -1 if there is no bigger number

---------------------------RULES-----------------------------------------
Explicit: 

Implicit: 

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO----------------------------------------

next largest number is with the last two numbers switched

Option 1
brute forcing (for real)
create an array of all possible permutuations of iwth the numbers in the given num
sort the array
return the number next number in the array after input

Option 2

iterate through the digits starting from the end (looking for a bigger number)
  if the next number is bigger
    switch them and return the string
  if the number after that (third to last) is larger
    



  if the second to last number is smaller
    switch them and return the string
  if the third to last number is smaller
    insert that num into the third to last spot
    return the string
  keep going till the end

return -1 (no numbers found)

  # length = num.digits.length

  # digits = num.digits.reverse
  # counter = 1
  # loop do
  #   digits[-2], digits[-1] = digits[-1], digits[-2]
  #   digits.join.to_i
  #   length -= 1
  # end
  # -1

2071


2087

8 smaller than 7 ? not smaller keep going

# 0 smaller than 7? yes! stop!
put seven in spot of where 0 was
other numbers shift right
return number


123789476
123789647

=end

# Option 1
# def next_bigger_num(num)
#   permutations = []
#   length = num.digits.size
#   num.digits.permutation(length) { |perm| permutations << perm.join.to_i}
#   permutations.sort!.uniq!
#   num == permutations.last ? -1 : permutations[permutations.find_index(num) + 1]
# end

# Option 2
# def next_bigger_num(num)
#   array_nums = num.digits.reverse
#   last_dig = array_nums.pop
#   array_nums.reverse.each_with_index do |digit, i|
#     if digit < last_dig
#       array_nums.insert(-2 - i, last_dig)
#       return (array_nums[0..(-2 - i)] + array_nums[(-1 - i)..-1].sort).join.to_i
#     end
#   end
#   -1
# end

# Option 3
# def next_bigger_num(num)
#   max_num = num.digits.sort.reverse.join.to_i
#   input = num

#   loop do
#     num += 1
#     break if num > max_num 
#     return num if same_digits?(num, input)
#   end
#   -1
# end

# def same_digits?(num1, num2)
#   num1.digits.sort == num2.digits.sort
# end

# # p same_digits?(123, 321)
# # p same_digits?(145, 167)


# p next_bigger_num(206875)
# p next_bigger_num(12) == 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(123456789) == 123456798
# p next_bigger_num(9) == -1
# p next_bigger_num(111) == -1
# p next_bigger_num(531) == -1