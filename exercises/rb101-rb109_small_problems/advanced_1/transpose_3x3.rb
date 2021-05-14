=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a 3 x 3 matrix in Array of Arrays format and
returns the transpose of the original matrix. Note that there is a
Array#transpose method that does this -- you may not use it for this
exercise. You also are not allowed to use the Matrix class from the
standard library. Your task is to do this yourself.

Take care not to modify the original matrix: you must produce a new
matrix and leave the original matrix unchanged.

--------------------------PROBLEM----------------------------------------

Input: a nested array (array with three elemetns where each element is an array with three elements)

Output: a nested array (array with three elemetns where each element is an array with three elements)

---------------------------RULES-----------------------------------------
Explicit: 
do not mutate the input
trasnpose the original matrix

Implicit: 
don't need to validate input

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO-----------------------------------------

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = [
  [1, 4, 3],
  [5, 7, 9],
  [8, 2, 6]
]

new_matrix[0][0] = matrix[0][0]
new_matrix[0][1] = matrix[1][0]
new_matrix[0][2] = matrix[2][0]

new_matrix[1][0] = matrix[0][1]
new_matrix[1][1] = matrix[1][1]
new_matrix[1][2] = matrix[2][1]


initialize the new matrix (nested array)
iterate from 0 to 2 (i)
  iterate from 0 to 2 (j)
    new_matrix[i][j] = matrix[j][i]

return new matrix array

=end

# def transpose(matrix)
#   transposed = [[], [], []]
#   0.upto(2) do |i|
#     0.upto(2) do |j|
#       transposed[i][j] = matrix[j][i]
#     end
#   end
#   transposed
# end

def transpose!(matrix)
  copy = matrix.map { |arr| arr.dup}
  0.upto(2) do |i|
    0.upto(2) do |j|
      matrix[i][j] = copy[j][i]
    end
  end
  matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose!(matrix)


p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]