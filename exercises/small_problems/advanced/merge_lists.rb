=begin
========
PROBLEM
========
Input(s): two sorted arrays

Output(s): returns flattened arrays sorted

Problem Domain: 

Implicit Requirements/Rules
  1. build result array one element at a time
  2. inputs are sorted

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples

==============
Data Structure
==============
input: array
output: array
working: array

=========
Algorithm
=========
`merge` method:
- Accept two arrays as arguments
- Initialize new empty array: merged_array
- Duplicate arrays to avoid changing input arrays
- Loop until merged array length == input array sizes sum
  - Since arrays are sorted, compare first value of arrays
    - If array1 > array2, then remove first element array1 and add to merged_array
    - If array1 < array2, then remove first element array2 and add to merged_array
    - Else (array1 == array2), remove first element of both and add both to merged_array
- return merged array
=====
Code
=====
=end

def merge(arr1, arr2)
  merged_array = []
  arr1, arr2 = [arr1.dup, arr2.dup]
  combined_size = arr1.size + arr2.size
  loop do
    break if merged_array.size == combined_size
    if arr1.empty?
      merged_array << arr2.shift until arr2.empty?
    elsif arr2.empty?
      merged_array << arr1.shift until arr1.empty?
    elsif arr1.first < arr2.first
      merged_array << arr1.shift
    elsif arr1.first > arr2.first
      merged_array << arr2.shift
    else
      merged_array << arr1.shift
      merged_array << arr2.shift
    end
  end
  merged_array
end

arr1 = [1, 5, 9]
arr2 = [2, 6, 8]

p merge(arr1, arr2) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

p arr1
p arr2