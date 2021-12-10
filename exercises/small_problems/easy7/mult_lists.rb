=begin
Problem
------------------------
-  Inputs: two arrays of numbers
-  Output: new array of product of each pair of numbers with same index

**Problem Domain:**
---

**Implicit Requirements:**
---
1. assume arguments have same number elements
2. 

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

---
Data Structure
--------------
array

Algorithm
---------
Define `multiply_list` taking two arrays as arguments (arr1, arr2)
  Initialize new empty array (return_arr)
  Iterate through first array with index saved to local variable
    Append product of values of same same index of both arrays to `return_arr`
  Return new array

Code
----
=end

def multiply_list(arr1, arr2)
  return_arr = []

  arr1.each_with_index do |val, idx|
    return_arr << val * arr2[idx]
  end
  return_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]