=begin
Problem
------------------------
-  Inputs: string
-  Output: array of substrings of all things

**Problem Domain:**
---

**Implicit Requirements:**
---
1. start with first character
2. order shortest to longest
3. array length = string length

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
Define `leading_substrings` with a string passed as argument
  Convert string to array of letters `return_arr`
  Iterate through array of letters assigning index of array to variable (idx)
    Assign chars of index 0 to idx to idx of `return_arr`
  Return `return_arr`

Code
----
=end

require "pry"

def leading_substrings(str)
  return_arr = str.chars
  return_arr.each_index { |idx| return_arr[idx] = str[0..idx] }
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']