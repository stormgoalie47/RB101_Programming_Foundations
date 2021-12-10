=begin
Problem
------------------------
-  Inputs: 
-  Output: ASCII string value

**Problem Domain:**
---

**Implicit Requirements:**
---
1. ASCII string value: sum of ASCII string values of every character
2. 

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 
  -  Output: 
-  Example 2
  -  Inputs: 
  -  Output: 
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

require "pry"

def ascii_value(str)
  str = str.chars
  value = 0
  
  str.each { |char| value += char.ord }
  value
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0