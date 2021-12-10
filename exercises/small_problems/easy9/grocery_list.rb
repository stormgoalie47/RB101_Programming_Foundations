=begin
========
PROBLEM
========
Input(s): nested array of fruits with quantities

Output(s): array of strings of fruits with the number specified in nested array

Problem Domain: 

Implicit Requirements/Rules
  1. return array of fruits
  2. each string should be repeated quantity number of times

Clarifying Questions:
  1. If empty?
  2. new array? mutate?

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------

==============
Data Structure
==============
input: nested array
output: array
working: array

=========
Algorithm
=========
`buy_fruit` method:
Accept array as argument
Iterate through array
  Each nested array add fruit string quantity times to new array
Return new array

=====
Code
=====
=end

def buy_fruit(fruits)
  fruit_arr = []
  fruits.map do |(fruit, quantity)|
    quantity.times { fruit_arr << fruit }
  end
  fruit_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]