=begin
========
PROBLEM
========
Input(s): three integers (scores)

Output(s): string representing grade

Problem Domain: return letter grade

Implicit Requirements/Rules
  1. 90-100: 'A'
  2. 80- <90: 'B'
  3. 70- < 80 'C'
  4. 60- < 70 'D'
  5. <60: F
  6. all values b/w 0-100

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
input: ints
output: string
working: ints/string

=========
Algorithm
=========
`get_grade` method:
Accept three integers as args
Calculate average of three scores
Determine and return letter grade based on average of scores

=====
Code
=====
=end

def get_grade(a, b, c)
  average = (a + b + c) / 3.0
  
  case average
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(60, 60, 60) == "D"