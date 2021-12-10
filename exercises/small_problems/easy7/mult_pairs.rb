=begin
Problem
------------------------
-  Inputs: two arrays of numbers
-  Output: new array of sorted products

**Problem Domain:**
---

**Implicit Requirements:**
---
1. not empty array
2. 

**Clarifying Questions:**
---
1. duplicate numbers in arrays that are passed as arguments within that array only?

**Mental Model:**
---

Data Structure
--------------
array

Algorithm
---------
Define `multiply_all_pairs` method that accepts two args (arr1, arr2)
  Initialize return_array to empty array
  Iterate through `arr1` assigning element to `val1`
    Iterate through `arr2` assigning element to `val2`
      Append product of `val1` and `val2` to return_array
Sort return array by value and return

Code
----
=end


def multiply_all_pairs(arr1, arr2)
  return_array = []
  arr1.each do |val1|
    arr2.each do |val2|
      return_array << val1 * val2
    end
  end
  return_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]