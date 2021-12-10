=begin
========
PROBLEM
========
Input(s): integer

Output(s): calculate the input fib num

Problem Domain: fibonacci series: sequence of nums starting with "1, 1" with the next num
  being the sum of the previous two

Implicit Requirements/Rules
  1. recursive method
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
output: int
working: int

=========
Algorithm
=========
`fibonacci` method:
Accept int `n` as arg
If `n` is <= 2, return 1
Else calculate sum of `n-1` and `n-2`

=====
Code
=====
=end

def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765