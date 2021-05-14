=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes an arbitrary matrix and rotates it 90 degrees
clockwise as shown above.

--------------------------PROBLEM----------------------------------------

Input: nested array

Output: nested array (rotated)

---------------------------RULES-----------------------------------------
Explicit: 
a 2x3 array becomes 3x2 (a mxn array becomes nxm)

Implicit: 
nothing happens to an array of 1 element?

--------------------------EXAMPLES---------------------------------------

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix2 == [
                [5, 3],
                [1, 7],
                [0, 4],
                [8, 2]
]


new_matrix => matrix2.count (2) length of each sub array
              matrix2[0].count (4) of sub arrays
----------------------------ALGO-----------------------------------------

zip arrays together
reverse each sub array
return modified array

=end

def rotate90(matrix)
  new_matrix = []
  matrix[0].size.times { new_matrix << []}
  new_matrix
  matrix.each_with_index do |row, i|
    row.each_with_index do |num, j|
      new_matrix[j][i] = num
    end
  end
  new_matrix.map { |arr| arr.reverse }
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2