=begin
========
PROBLEM
========
Input(s): 3 angles

Output(s): :right, :acute, :obtuse, :invalid

Problem Domain: 
right: one angle is 90 degrees
acute: all 3 angles < 90 degrees
obtuse: one angle > 90 degrees

Implicit Requirements/Rules
  1. sum of angles == 180 degrees
  2. angles > 0
  3. assume integers only

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples

==============
Data Structure
==============
input: 3 ints
output: symbol
working: arr

=========
Algorithm
=========
`triangle` method:
accept 3 ints as args
assigne args to array
Check if valid triangle(valid_triangle?), return :invalid if not
If largest angle > 90, :obtuse
If largest angle == 90, :right
Else :acute

`valid_triangle?` method:
accept array of angles
valid if:
  sum of angles == 180
  angles > 0

=====
Code
=====
=end

def valid_triangle?(sides)
  sides.sum == 180 && sides.all? { |side| side > 0 }
end

def triangle(side_1, side_2, side_3)
  sides = [side_1, side_2, side_3]
  return :invalid unless valid_triangle?(sides)
  
  largest = sides.max
  return :obtuse if largest > 90
  return :right if largest == 90
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid