=begin
========
PROBLEM
========
Input(s): integer

Output(s): integer

Problem Domain: 

Implicit Requirements/Rules
  1. rotate to left, freeze first integer, rotate to left, freeze second integer
  2. leading 0 is dropped
  3. do not need to account for multiple 0's

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
input: integer
output: integer
working: array

=========
Algorithm
=========
`max_rotation` method:
Accept input of integer
Initialize counter to number of digits
Initialize new string
Convert integer to string
Pass (-counter to last index) to `rotate_rightmost_digits` as argument and decrease counter
    by one on each iteration. Append index 0 of return to new string. Repeat counter times
Return string converted to integer

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

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845