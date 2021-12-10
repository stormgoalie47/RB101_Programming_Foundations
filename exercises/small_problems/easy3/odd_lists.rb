=begin
Problem
------------------------
-  Inputs: array
-  Output: array of every other element

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

Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

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

def oddities(array)
  return_array = []
  array.each_with_index { |ele, idx| return_array << ele unless idx.odd?}
  return_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []