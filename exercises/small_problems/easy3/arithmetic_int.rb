=begin
Problem
------------------------
-  Inputs: 2 positive integers from user
-  Output: addition, subtraction, product quotient, remainder, power

**Problem Domain:**
---

**Implicit Requirements:**
---
1. positive integers (2) input from user
2. 

**Clarifying Questions:**
---
1. Does it matter order of placement within operation? Yes. First number will be placed on left of operation

**Mental Model:**
---

Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 23, 17
  -  Output: 23 + 17 = 40, 23 - 17 = 6, etc.
-  Example 2
  -  Inputs: 
  -  Output: 
---
_Your Test Cases:_
-  Example 3
  -  Inputs: 
  -  Output:
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
--------------
Strings

Algorithm
---------
GET two positive integers
SET variables to input integers
PRINT +, -, *, /, %, **

Code
----
=end

def get_two_ints
  arr = []
  puts "==> Enter the first number:"
  arr << gets.chomp.to_i
  puts "==> Enter the second number:"
  arr << gets.chomp.to_i
end

def addition(arr)
  "==> #{arr[0]} + #{arr[1]} = #{arr.sum}"
end

def subtraction(arr)
  "==> #{arr[0]} - #{arr[1]} = #{arr[0] - arr[1]}"
end

def product(arr)
  "==> #{arr[0]} * #{arr[1]} = #{arr[0] * arr[1]}"
end

def quotient(arr)
  "==> #{arr[0]} / #{arr[1]} = #{arr[0] / arr[1]}"
end

def remainder(arr)
  "==> #{arr[0]} % #{arr[1]} = #{arr[0] % arr[1]}"
end

def power(arr)
  "==> #{arr[0]} ** #{arr[1]} = #{arr[0] ** arr[1]}"
end


def display_math_results(arr)
  puts addition(arr)
  puts subtraction(arr)
  puts product(arr)
  puts quotient(arr)
  puts remainder(arr)
  puts power(arr)
end

display_math_results(get_two_ints)