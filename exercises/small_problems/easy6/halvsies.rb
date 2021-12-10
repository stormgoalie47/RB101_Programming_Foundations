=begin
Problem
------------------------
-  Inputs: array
-  Output: two arrays (nested) w/ first half and second half, respectively

**Problem Domain:**
---

**Implicit Requirements:**
---
1. return nested array with half in one, half in other
2. if odd number elements, first half should have one more

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
Input single array and determine size of array
Initialize new array of length 2
Size of each nested array is input array size / 2 unless size is odd number
If size is odd number, first array should be larger in size by 1
Add elements to first array until size of first array is met
Add remaining elements to second array
Return nested array

Code
----
=end

def halvsies(arr)
  return_arr = Array.new(2, [])
  arr_size_half = arr.size / 2
  arr_size_half += 1 unless arr.size % 2 == 0

  arr.each do |ele|
    if return_arr[0].size < arr_size_half
      return_arr[0] = return_arr[0] + [ele]
    else
      return_arr[1] = return_arr[1] + [ele]
    end
  end
  return_arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]