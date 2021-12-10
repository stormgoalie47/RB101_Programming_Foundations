=begin
Problem
------------------------
-  Inputs: two arrays
-  Output: single array with all values from both arrays

**Problem Domain:**
---

**Implicit Requirements:**
---
1. no duplicated values in return array
2. 

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
Array

Algorithm
---------
Input of two arrays passed as arguments to `merge`
Merge two arrays
Delete duplicate values of merged array
Return array

Code
----
=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]