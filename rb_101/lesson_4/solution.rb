def sum_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do 
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end

# Test Cases
# raw number: 1 --> sume of integers in row: 2
# raw number: 2 --> sume of integers in row: 10
# raw number: 4 --> sume of integers in row: 68

p sum_number_row(1) == 2
p sum_number_row(2) == 10
p sum_number_row(4) == 68

# 1. Create an empty rows array to contain all of the rows
# 2. Create a row array and add it to the overall rows array
# 3. Repeat step 2 until al lthe necessary rows have been created
# 4. 

# Rule: first integer of row == last integer of preceding row + 2
# Algorithm:
# - Get the preceding row
# - Get the last integer of that row
# - Add 2 to the integer

# start: 2, length 1 --> [2]
# start: 4, length 2 --> [4, 6]
# start: 8, length 3 --> [8, 10, 12]

# p create_row(2, 1) == [2]
# p create_row(4, 2) == [4, 6]
# p create_row(8, 3) == [8, 10, 12]

# 1. Create an empty 'row' array to contain the integers
# 2. Add the starting integers
# 3. Increment the starting integer by 2 to get the next integer in the sequence
# 4. Repeate steps 2 and 3 until the array has reached the correct length
# 5. Return the 'row' array

# Start the loop
# Add the start integer to the row
# Increment the start integer by 2 
# Break out of the loop if length of row equals row_length

# Final thoughts

# - Not a completely linear process
# - Move backward and forward between the steps
# - Switch from implementation mode to abstract problem solving mode as necessary
# - Don't try to problem solve at the code level.
