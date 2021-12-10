=begin
========
PROBLEM
========
Input(s): odd integer

Output(s): star

Problem Domain: 

Implicit Requirements/Rules
  1. smallest: 7 x 7
  2. middle: input number of stars
  3. every other line has 3 stars
  4. input is number of lines

Clarifying Questions:
  1. Check if odd?

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------

==============
Data Structure
==============
input: int
output: strings
working: strings

=========
Algorithm
=========
`star` method:
- Accept int as argument `n`
- Output first (n-1) / 2 lines
  - line_num - 1 spaces, star, (n / 2) - line_num spaces, star, (n / 2) - line_num spaces
  - save these to array
- Output middle line: `n` number of stars
- Output last (n-1) / 2 lines (same as first, but reversed)
  - reverse first half array to output

=====
Code
=====
=end

def first_line(num)
  arr = []
  1.upto( (num - 1) / 2 ) do |line_num|
    front_spaces = ' ' * (line_num - 1)
    middle_spaces = ' ' * ((num / 2) - line_num)
    arr << front_spaces + '*' + middle_spaces + '*' + middle_spaces + '*'
  end
  arr
end

def star(num)
  first_line_arr = first_line(num)
  puts first_line_arr
  puts '*' * num
  puts first_line_arr.reverse
end

star(21)