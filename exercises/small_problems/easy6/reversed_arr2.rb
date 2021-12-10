=begin
Problem
------------------------
-  Inputs: array
-  Output: new array in reverse order

**Problem Domain:**
---

**Implicit Requirements:**
---
1. new string returned
2. do not use `reverse`

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
Initialize a new array(return_arr) to be returned.
Iterated through input array starting with first element of array
Add element to beginning of return_arr at each iteration
Return new array

Code
----
=end

def reverse(arr)
  return_arr = []
  arr.each { |ele| return_arr.unshift(ele) }
  return_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true