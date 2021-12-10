=begin
Problem
------------------------
-  Inputs: word/multiple words (string)
-  Output: number of characters w/o spaces

**Problem Domain:**
---

**Implicit Requirements:**
---
1. string of word(s) input by user
2. return number of characters w/o spaces
3. include symbols as characters

**Clarifying Questions:**
---
1. include symbols (:/,! etc.)

**Mental Model:**
---

Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: walk
  -  Output: There are 4 characters in "walk".
-  Example 2
  -  Inputs: walk, don't run
  -  Output: There are 13 characters in "walk, don't run"
---
_Your Test Cases:_
-  Example 3
  -  Inputs: 
  -  Output:
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------


Algorithm
---------


Code
----
=end

puts "Please write word or multiple words:"
input_string = gets.chomp

input_chars = input_string.chars
input_chars.delete(" ")

puts "There are #{input_chars.length} characters in \"#{input_string}\"."