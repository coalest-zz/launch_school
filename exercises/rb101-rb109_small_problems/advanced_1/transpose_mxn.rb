=begin
-----------------------INSTRUCTIONS--------------------------------------
In the previous exercise, you wrote a method to transpose a 3 x 3 matrix
as represented by a ruby Array of Arrays.

Matrix transposes aren't limited to 3 x 3 matrices, or even square
matrices. Any matrix can be transposed by simply switching columns with
rows.

Modify your transpose method from the previous exercise so it works with
any matrix with at least 1 row and 1 column.

--------------------------PROBLEM----------------------------------------

Input: nest array (with 1+ rows and 1+ columns)

Output: nested array with same number of rows and columns

---------------------------RULES-----------------------------------------
Explicit: 
must work with nested arrays as small as [[x]]
modify previous method

Implicit: 
mxn array becomes nxm (e.g. 1 x 4 becomes 4 x 1)

--------------------------EXAMPLES---------------------------------------


----------------------------ALGO-----------------------------------------

[[1, 2, 3, 4]] ==> [[1], [2], [3], [4]]

new[0][0] = matrix[0][0]
new[0][1] = matrix[1][0]
new[0][2] = matrix[2][0]
new[0][3] = matrix[3][0]


=end

require 'pry'

def transpose(matrix)
  transposed = Array.new(matrix[0].size) {Array.new}
  0.upto(matrix[0].size - 1) do |i|
    0.upto(matrix.size - 1) do |j|
      # binding.pry
      transposed[i][j] = matrix[j][i]
    end
  end
  transposed
end



p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]