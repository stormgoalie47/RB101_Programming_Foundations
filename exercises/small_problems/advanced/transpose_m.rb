=begin
========
PROBLEM
========
Input(s): matrix

Output(s): matrix transposed

Problem Domain: 

Implicit Requirements/Rules
  1. make columns rows
  2. work with any matrix 1 x 1 or greater

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
working: array

=========
Algorithm
=========
`transpose` method:
- Accept nested array as argument
- Transpose columns to rows starting with first column
  - Iterate through each column (index of 0 to (length - 1) of subarrays)
    - Iterate through each row (index of 0 to )
- return_array returned

=====
Code
=====
=end

require "pry"

def transpose(matrix)
  transposed_matrix = []
  0.upto(matrix[0].size - 1) do |row|
    row_array = []
    0.upto(matrix.size - 1) do |column|
      row_array << matrix[column][row]
    end
    transposed_matrix << row_array
  end
  transposed_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]