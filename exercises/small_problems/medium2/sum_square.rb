=begin
========
PROBLEM
========
Input(s): integer

Output(s): integer

Problem Domain: 

Implicit Requirements/Rules
  1. (sum of first `n` positive integers) squared
  2. sum of squares of first `n` positive integers
  3. 1 - 2

Clarifying Questions:
  1. given 0 or negative number?

==================================
Examples / Test Cases / Edge Cases
==================================
Examples

==============
Data Structure
==============
input: int
output: int
working: int

=========
Algorithm
=========
`sum_square_difference` method
- Accept pos int as arg
- Calculate square of sums: `square_sum` method
- Calculate sum of squares: `sum_squares` method
- square_sum - sum_squares

`square_sum` method:
- Accept pos int as arg
- from 1 to `n`, add to sum variable
- square sum and return

`sum_squares` method:
- Accept pos int as arg
- from 1 to `n`, square and then add to sum variable
- return sum

=====
Code
=====
=end

def square_sum(int)
  sum = 0
  1.upto(int) { |num| sum += num }
  sum ** 2
end

def sum_squares(int)
  sum = 0
  1.upto(int) { |num| sum += num ** 2 }
  sum
end

def sum_square_difference(int)
  square_sum(int) - sum_squares(int)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150