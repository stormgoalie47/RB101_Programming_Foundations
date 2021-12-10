=begin
Problem
------------------------
-  Inputs: non-empty string
-  Output: middle character(s)

**Problem Domain:**
---

**Implicit Requirements:**
---
1. odd length, one character
2. even length, two characters

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
string

Algorithm
---------
Determine length of string
If string is odd, return character at string length / 2 rounded up
If string is even, return characters at string length / 2 and the next index

Code
----
=end

def center_of(str)
  str_length = str.size
  middle = str_length / 2
  str_length.odd? ? str[middle] : str[(middle-1)..middle]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'