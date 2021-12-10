=begin
Problem
------------------------
-  Inputs: two arguments
-  Output: `true`/`false`

**Problem Domain:**
---

**Implicit Requirements:**
---
1. return `true` if one argument is truthy
2. return `false` if both or none are truthy

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

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

def xor?(arg_1, arg_2)
  return true if arg_1 || arg_2 unless arg_1 && arg_2
  false
end





p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false