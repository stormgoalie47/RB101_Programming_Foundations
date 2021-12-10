=begin
Problem
------------------------
-  Inputs: string
-  Output: new string with each character doubled

**Problem Domain:**
---

**Implicit Requirements:**
---
1. 
2. 

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
str -> array -> str

Algorithm
---------
Define `repeater` method with single string as argument
  Convert string to array of characters
  Initialize new return string
  Iterate through array of characters
    Append character to return string two times at each iteration
  Return new string

Code
----
=end

def repeater(str)
  repeated = ''
  str.chars.each { |char| repeated << char * 2 }
  repeated
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''