=begin
========
PROBLEM
========
Input(s): integer, integer of number of last digits to rotate

Output(s): integer rotated

Problem Domain: rotate `n` number of last digits of input

Implicit Requirements/Rules
  1. rotate number of digits from right
  2. return integer

Clarifying Questions:
  1. if second argument 0?
  2. if second argument greater than length of digit?

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------

==============
Data Structure
==============
input: integer
output: integer
working: arr

=========
Algorithm
=========
`rotate_rightmost_digits` method:
Accept two integers as args: num, num_digits
Convert num to string
Pass last num_digits of string to `rotate_array` after converting to array of chars
Append return value of `rotate_array` to first (num string length - num_digits) characters
Convert string to integer and return

=====
Code
=====
=end

def rotate_array(arr)
  arr[1..arr.length] + [arr[0]]
end

def rotate_rightmost_digits(num, num_digits)
  num_str = num.to_s
  rotated = rotate_array(num_str.chars[-num_digits..-1]).join
  return rotated.to_i if rotated.size == num_str.size
  (num_str[0..(num_str.size - num_digits - 1)] + rotated).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917