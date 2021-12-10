=begin
========
PROBLEM
========
Input(s): int

Output(s): last digit of fib num

Problem Domain: 

Implicit Requirements/Rules
  1. 
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
working: arr

=========
Algorithm
=========
`fibonacci_last` method:
Accept int `num` as arg representing fib num
Assign new array to [1, 1] (first two numbers in seq), assigning first num to `first`, last `last`
From 3 to `num`, reassign `first` to `last` and `last` to `first + last`
Convert `last` to string
Select last character of string (last digit)
Convert last character to int and return

=====
Code
=====
=end

def fibonacci_last(num)
  first, last = [1, 1]
  3.upto(num) do
    first, last = [last, (first + last) % 10]
  end
  last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4