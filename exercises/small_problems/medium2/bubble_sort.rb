=begin
========
PROBLEM
========
Input(s): array

Output(s): sorted array (original array)

Problem Domain: 
bubble sort: multiple passes through array until no swaps made and array is sorted

Implicit Requirements/Rules
  1. return original sorted array
  2. array has at least 2 elements
  3. sort strings as well

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------

==============
Data Structure
==============
input: array
output: sorted array
working: array

=========
Algorithm
=========
`bubble_sort!` method:
- Accept array as arg
- Loop until `sorted`
  - Assign `sorted` variable to `true`
  - iterate through array
    - if element is greater than next element, swap elements and change `sorted` to `false``
- 

=====
Code
=====
=end

def bubble_sort!(array)
  loop do
    sorted = true
    array.each_index do |index|
      next if index == array.size - 1
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        sorted = false
      end
    end

    break if sorted
  end
end

array = [5, 3]
p array.object_id
bubble_sort!(array)
p array == [3, 5]
p array.object_id

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)