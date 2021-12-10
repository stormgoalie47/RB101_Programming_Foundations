=begin
========
PROBLEM
========
Input(s): int

Output(s): fib num of int

Problem Domain: 

Implicit Requirements/Rules
  1. non-recursive method
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
`fibonacci` method:
accept integer as input `num`
Create an empty array
Until the length of the array equals `num`
  If num < 2, append 1 to array
  Else sum last two elements of array and append sum to array
Return last number in array

=====
Code
=====
=end

def fibonacci(num)
  sequence = []
  loop do
    break if sequence.size == num
    if sequence.size < 2
      sequence << 1
    else
      sequence << sequence[-1] + sequence[-2]
    end
  end
  sequence[-1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501