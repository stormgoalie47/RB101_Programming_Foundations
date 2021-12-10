=begin
========
PROBLEM
========
Input(s): 

Output(s): 
merge sort: recursive sorting algo that breaks down array elements into nested sub-arrays

Problem Domain: 

Implicit Requirements/Rules
  1. 
  2. 

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------


Test Cases
-----------


Edge Cases
-----------


==============
Data Structure
==============
input: 
output: 
working:

=========
Algorithm
=========


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

def merge_sort(arr)
  return arr if arr.size <= 1

  sub_arr_1 = arr[0...arr.size / 2]
  sub_arr_2 = arr[arr.size / 2...arr.size]

  sub_arr_1 = merge_sort(sub_arr_1)
  sub_arr_2 = merge_sort(sub_arr_2)

  merge(sub_arr_1, sub_arr_2)
end

p merge_sort([]) == []
p merge_sort([4]) == [4]
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]