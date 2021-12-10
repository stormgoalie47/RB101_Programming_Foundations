=begin
Problem
------------------------
-  Inputs: array, search value
-  Output: `true` if value is in array, `false` if not

**Problem Domain:**
---

**Implicit Requirements:**
---
1. cannot use `Array#include?`
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
Array of elements to search and value to search for passed in as args
Define `include?` method with two arguments (search, search_for)
Iterate through array and test if value equals current element
Return true if it does
After iterating through array, return false if not found

Code
----
=end

def include?(search, search_for)
  search.each { |ele| return included = true if ele == search_for}
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false