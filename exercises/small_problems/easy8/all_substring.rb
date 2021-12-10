=begin
Problem
------------------------
-  Inputs: string
-  Output: list of all possible substrings ordered by where substring begins

**Problem Domain:**
---

**Implicit Requirements:**
---
1. Sort: start of substring, then length
2. all possible substrings

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
Define `substrings` and pass single argument `str`
  Create array of strings that is missing first index as array moves ['abcde', 'bcde', 'cde']
    modified `leading_substrings`
  Using `leading_substrings` method
Code
----
=end

def leading_substrings(str)
  return_arr = str.chars
  return_arr.each_index { |idx| return_arr[idx] = str[0..idx] }
end

def trailing_substrings(str)
  return_arr = str.chars
  return_arr.each_index { |idx| return_arr[idx] = str[idx..str.length] }
end


def substrings(str)
  return_arr = []
  trailing_substrings(str).each { |str| return_arr << leading_substrings(str) }
  return_arr.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]