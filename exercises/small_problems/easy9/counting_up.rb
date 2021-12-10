=begin
========
PROBLEM
========
Input(s): integer

Output(s): array of integers in sequence from 1 to input integer

Problem Domain: array count up from 1

Implicit Requirements/Rules
  1. input always greater than 0
  2. 

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
input: int
output: array
working: array

=========
Algorithm
=========
`sequence` method:
- accept integer as input
- initialize empty array
- count up from one to input integer and add each integer to array
- return array

=====
Code
=====
=end

def sequence(int)
  count = []
  1.upto(int) { |num| count << num }
  count
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]