=begin
========
PROBLEM
========
Input(s): matrix

Output(s): rotated matrix 90 degrees

Problem Domain: 

Implicit Requirements/Rules
  1. last of first column becomes first of first row
  2. last of last array becomes first of last array

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------

==============
Data Structure
==============
input: array
output: array
working:array

=========
Algorithm
=========
`rotate90` method:
- Accept array as argument
- Iterate through first column from bottom to top and assign to first row
  - from -length of subarray to 0 (column_num)
    - from -length of matrix to 0 (row_num)
      - add value at [row_num][column_num] to row_array
    - Append row array to rotated_array
- return rotated_array

=====
Code
=====
=end

require "pry"

def rotate90(matrix)
  rotated_array = []
  (-matrix.first.size...0).each do |column_num|
    row_array = []
    (-1).downto(-matrix.size) { |row_num| row_array << matrix[row_num][column_num] }
    rotated_array << row_array
  end
  rotated_array
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