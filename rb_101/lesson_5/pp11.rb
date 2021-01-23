arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |arr1|
  arr1.select { |i| i % 3 == 0}
end