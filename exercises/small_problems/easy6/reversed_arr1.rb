=begin
Problem
------------------------
-  Inputs: array
-  Output: mutated array reversed order

**Problem Domain:**
---

**Implicit Requirements:**
---
1. must be mutated array (same objet passed in)
2. array order reversed

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
Input of array that is sorted by the index of the input array.
The last index will become the first via mutating method.

Code
----
=end

def reverse!(arr)
  arr.sort! { 1 }
end


p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true