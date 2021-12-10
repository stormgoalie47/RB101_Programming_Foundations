=begin
========
PROBLEM
========
Input(s): string (first last)

Output(s): string (last, first)

Problem Domain: 

Implicit Requirements/Rules
  1. switch order of names
  2. add comma after last (first in order of return string) name

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples

==============
Data Structure
==============
input: str
output: str
working: arr

=========
Algorithm
=========
`swap_name` method:
Accept string as argument
Convert string to array, splitting at " "
Reverse array and concatenate to string with ", "
Return string

=====
Code
=====
=end

def swap_name(name)
  name.split.reverse.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'