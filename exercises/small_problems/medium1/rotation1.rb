=begin
========
PROBLEM
========
Input(s): array

Output(s): new array with first element moved to last

Problem Domain: 

Implicit Requirements/Rules
  1. don't use `#rotate(!)`
  2. what if empty array?

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
input: array
output: array
working: array

=========
Algorithm
=========
`rotate_array` method:
Accept array as argument
Initialize new array to all elements except first and then append first element to array
Return new array

=====
Code
=====
=end

def rotate_array(arr)
  arr[1..arr.length] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true