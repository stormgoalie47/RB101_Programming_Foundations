=begin
Problem
------------------------
-  Inputs: two arrays
-  Output: new array w/ elements of both arrays in alterating order

**Problem Domain:**
---

**Implicit Requirements:**
---
1. assume same number of elements
2. assume non-empty arrays
3. start with first array

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
Input of two arrays. Assign to local variables (arr1 arr2) within method definition
Set index local variable to 0 to reference array elements
Initialize `return_arr` to empty array
Iterate through elements by referencing index of first array and appending to `return_arr`
  then second array and appending
Stop iteration once index is greater than or equal to arr1 size

Code
----
=end

def interleave(arr1, arr2)
  index = 0
  return_arr = []

  loop do
    break if index >= arr1.size
    return_arr << arr1[index]
    return_arr << arr2[index]
    index += 1
  end
  return_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']