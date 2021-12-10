# Given an array of n positive integers and a positive integer s, 
# find the minimal length of a contiguous subarray of which the sum ≥ s. 
# If there isn't one, return 0 instead.

=begin
========
PROBLEM
========
Input(s): array of pos ints, pos int

Output(s): length of subarray to be >= s

Problem Domain: 

Implicit Requirements/Rules
  1. positive integers in array
  2. positive integer `s`
  3. return length of array needed to be >= s when subarray summed

Clarifying Questions:
  1. if 0 is `s`?

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------

==============
Data Structure
==============
input: array, int
output: int
working: array

=========
Algorithm
=========
`minSubLength` method:
- accept array and int as args
- Find all subarrays: subarrays method
- Select only subarrays with sum >= target
- Find minimal length of subarrays and return

`subarrays` method:
- accept array as arg
- initialize new array
- iterate through each index
  - from index to arr[index..-1] length
    - append subarray to new array
- return new array

=====
Code
=====
=end

require "pry"

def sub_arrays(arr)
  subarr = []
  arr.each_index do |start_idx|
    start_idx.upto(arr.length - 1) do |end_idx|
      subarr << arr[start_idx..end_idx]
    end
  end
  subarr
end

def minSubLength(arr, s)
  subarrays = sub_arrays(arr)
  subarrays.select { |subarr| subarr.sum >= s }
  subarrays.sort_by! { |subarr| subarr.length }
  subarrays.first.length
end

# def minSubLength(num_array, target_sum)
#   sub_arrays = sub_arrays(num_array)
#   sub_arrays = greater_than(sub_arrays, target_sum)
#   minimum_length(sub_arrays)
# end

p minSubLength([2,3,1,2,4,3], 7) #== 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0
