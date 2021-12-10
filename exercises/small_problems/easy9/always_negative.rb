=begin
========
PROBLEM
========
Input(s): number

Output(s): return integer that is negative

Problem Domain: 

Implicit Requirements/Rules
  1. all numbers returned are negative
  2. 0 returns 0

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================

==============
Data Structure
==============
input: int
output: int
working: int

=========
Algorithm
=========
`negative` method:
- accept input of integer
- check if integer is negative
  - if negative, return input integer
  - if positive, return negative integer

=====
Code
=====
=end

def negative(int)
  int > 0 ? 0 - int : int
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby