=begin
========
PROBLEM
========
Input(s): 3 nums (length of triangle)

Output(s): :equilateral, :isosceles, :scalene, :invalid

Problem Domain: 
  equilateral: all 3 sides equal length
  isosceles: 2 sides equal length
  scalene: 3 different lengths

Implicit Requirements/Rules
  1. valid triangle: 
    sum of lengths of 2 shortest > length of longest
    lengths > 0
  2. accept floats
  3. input can be in any order

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
input: nums (int/float)
output: symbol
working: int/float

=========
Algorithm
=========
`triangle` method:
Accept 3 numbers as args
Assign nums to new array
Check valid triangle: `valid_triangle?`
Determine type of triangle: `triangle_type`

`valid_triangle?` method:
Accept array as arg
Check that all numbers > 0
  if not return :invalid
Sort array smallest to largest
Check that sum of 2 smallest are > largest
  if not return :invalid

`triangle_type` method:
accept array of nums as arg
If all values same in array, then return :equilateral
If 2 values same, one different, then return :isosceles
Else return :scalene

=====
Code
=====
=end

def valid_triangle?(triangle_lengths)
  return false if triangle_lengths.any?  { |length| length <= 0 }
  
  triangle_lengths = triangle_lengths.sort
  return true if triangle_lengths[0,2].sum > triangle_lengths[2]
end

def triangle_type(triangle_lengths)
  lengths = Hash.new(0)
  triangle_lengths.each { |length| lengths[length] += 1 }
  
  case lengths.values.size
  when 1 then :equilateral
  when 2 then :isosceles
  else :scalene
  end
end

def triangle(length_1, length_2, length_3)
  triangle_lengths = [length_1, length_2, length_3]
  return :invalid unless valid_triangle?(triangle_lengths)
  triangle_type(triangle_lengths)
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid