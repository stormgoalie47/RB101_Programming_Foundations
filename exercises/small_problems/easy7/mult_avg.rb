=begin
Problem
------------------------
-  Inputs: array of integers
-  Output: average of integers multiplied together and divided by number of entries

**Problem Domain:**
---

**Implicit Requirements:**
---
1. array is non-empty
2. output 3 decimals no matter what

**Clarifying Questions:**
---
1. What if 0 in array?

**Mental Model:**
---

Data Structure
--------------
Array -> float

Algorithm
---------
Define `show_multiplicative_average` with argument as array
  `calculate_mult_avg` helper method with array as arg
      initialize `product` to 1
      iterate through array
        multiply element by `product` and reassign to `product`
      return `product`` divided by array length
  format return value of `calculate_mult_avg` to three decimal string with
    "The result is " in front of it

Code
----
=end

def calculate_mult_avg(arr)
  product = 1
  arr.each { |num| product *= num }
  product.to_f / arr.length
end

def show_multiplicative_average(arr)
  avg = calculate_mult_avg(arr)
  puts "The result is #{format("%.3f", avg)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667