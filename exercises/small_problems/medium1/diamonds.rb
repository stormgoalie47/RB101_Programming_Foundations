=begin
========
PROBLEM
========
Input(s): odd int `n`

Output(s): * in an n x n grid 

Problem Domain: 

Implicit Requirements/Rules
  1. argument alway odd
  2. max number of '*' is `n`
  3. start with one `*` top and bottom
  4. add/subtract two '*' to subsequent line

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------
diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

==============
Data Structure
==============
input: odd integer
output: diamond of '*' (strings)
working: strings

=========
Algorithm
=========
`diamond` method:
- accept odd int as arg `n`
- Starting with one '*' output to line centered
- Increase number of '*' on line by 2 until `n` '*'
- Decrease number of '*' on line by 2 until 0

=====
Code
=====
=end

def diamond(n)
  1.upto(n) do |count|
    puts "#{' ' * ((n - count) / 2)}#{'*' * count}" if count.odd?
  end
  (n-1).downto(1) do |count|
    puts "#{' ' * ((n - count) / 2)}#{'*' * count}" if count.odd?
  end
end

diamond(1)
diamond(3)
diamond(9)
diamond(60)
