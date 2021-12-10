=begin
========
PROBLEM
========
Input(s): two integers
  1. count
  2. start of sequence (start_seq)

Output(s): array with `count` number of elements that are multiples of `start_seq`

Problem Domain: 

Implicit Requirements/Rules
  1. array consists of multiples of second argument
  2. count always >= 0
  3. count of 0 returns empty array
  4. number of elements equals count

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
input: two ints
output: array of ints
working: array

=========
Algorithm
=========
`sequence` method:
Accept two ints as arguments (`count`, `start_seq`)
Create empty array `multiples`
While the `multiples` array is < `count`, add next multiple to `multiples`
Return array

=====
Code
=====
=end

def sequence(count, start_seq)
  multiples = []
  count.times { |n| multiples << start_seq + (start_seq * n) }
  multiples
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []