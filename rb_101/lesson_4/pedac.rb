def pyramid_array(row_num)
  current_row = 1
  array = []
  start_num = 2
  num_of_nums = 1
  current_row_array = []
  counter = 0

  # while counter < 100
  #   array[counter] = (counter+1)*2
  #   counter += 1
  # end

  counter = 0

  while current_row < row_num
    current_row_array = Array.new(current_row) {|i|(current_row)*(i+1) }
    array[current_row - 1] = current_row_array
    current_row += 1
  end

  p array
end

pyramid_array(10)
# create first row with one number starting with 2
# created second row with two numbers starting with 4
# create third row with three numbers starting with 8
# create fourth row with four numbers starting with 14