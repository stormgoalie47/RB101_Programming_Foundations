=begin
========
PROBLEM
========
Input(s): string

Output(s): boolean: all uppercase?

Problem Domain: check if string is in all caps

Implicit Requirements/Rules
  1. check only alphas
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
input: string
output: string
working: array

=========
Algorithm
=========
Create constant array of capitalized alphabet

`uppercase?` method:
Accept input of string
Convert string to array of characters
Iterate through chars
  If letter, check if capitilized
  Return false if any letters not capitalized
  Return true if all letters capitilized

=====
Code
=====
=end

LETTERS_UP = ('A'..'Z').to_a
LETTERS_DOWN = ('a'..'z').to_a

def uppercase?(str)
  str.chars.all? { |char| LETTERS_UP.include?(char) || !LETTERS_DOWN.include?(char)}
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true