=begin
Problem
------------------------
-  Inputs: array numbers
-  Output: integer of sums of sums

**Problem Domain:**
---

**Implicit Requirements:**
---
1. sums of sums: start with first number of array, add first number to (first + second)...
2. assume at least one number

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
array -> int

Algorithm
---------
Define `sum_of_sums` method with `arr` as argument
  Initialize `sum` to 0
  iterate through arr assigning `num` to element
    Reassign sum to (sum + num)
  Return sum

Code
----
=end

def sum_of_sums(arr)
  sum = 0
  arr.each_with_index { |_, idx| sum += arr[0..idx].sum}
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35