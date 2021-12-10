=begin
Problem
------------------------
-  Inputs: string
-  Output: next to last word of String

**Problem Domain:**
---

**Implicit Requirements:**
---
1. word: sequence of non-blank characters
2. assume string always has at least 2 words

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
array

Algorithm
---------
Define `penultimate` method that takes string as argument `str`
  Convert string to array of words by splitting string at " "'s
  Return second to last element of array

Code
----
=end

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'