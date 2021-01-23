arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# expected output: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr.sort_by do |inner_array|
  inner_array.select do |num|
    num.odd?
  end
end