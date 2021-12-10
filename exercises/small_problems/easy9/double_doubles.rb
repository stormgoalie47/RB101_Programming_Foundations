=begin
========
PROBLEM
========
Input(s): integer

Output(s): double integer input unless it is a double number (then return input)

Problem Domain: double number: number with even num of digits and digits on left = right

Implicit Requirements/Rules
  1. double numbers return input
  2. non-double numbers return 2 * input
  3. double number: even string length, split down middle -> left = right

Clarifying Questions:
  1. check input valid?

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------
See below

Test Cases
-----------


Edge Cases
-----------


==============
Data Structure
==============
input: integer
output: integer
working: string

=========
Algorithm
=========
`twice` method:
- accept input of integer
- check if `double_number?` (helper method)
  - if double number, return input integer
  - if not, return 2 * input integer

`double_number?` method:
- accept input of integer
- convert input to string
- if length of string is not even, return `false`
- if length of string even, check if left half equals right half
  - if it does, return `true`
  - if not, return `false`

=====
Code
=====
=end

def double_number?(int)
  int = int.to_s
  int_length = int.length
  return false unless int_length.even?
  return true if int[0..(int_length / 2 - 1)] == int[(int_length/2)..-1]
  false
end

def twice(int)
  double_number?(int) ? int : int * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10