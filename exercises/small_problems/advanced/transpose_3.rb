=begin
========
PROBLEM
========
Input(s): nested array

Output(s): transposed nested array

Problem Domain: 

Implicit Requirements/Rules
  1. return new array
  2. columns become rows
  3. given 3 x 3 matrix

Clarifying Questions:
  1. All nested arrays have same number of values?

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
working: array

=========
Algorithm
=========
`transpose` method:
- Accept nested array (matrix) as argument
- The first column, becomes the first row, etc.
  - Iterate through each subarray
  - The first position of each subarray becomes the first row(nested array)
- Return new array

=====
Code
=====
=end

def transpose(matrix)
  new_matrix = []
  0.upto(2) do |row|
    new_row = []
    0.upto(2) { |index| new_row << matrix[index][row] }
    new_matrix << new_row
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]