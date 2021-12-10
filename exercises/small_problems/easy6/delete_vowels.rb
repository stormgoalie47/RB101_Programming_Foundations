=begin
Problem
------------------------
-  Inputs: array of strings
-  Output: array of strings w/o vowels

**Problem Domain:**
---

**Implicit Requirements:**
---
1. remove vowels from string
2. both lower case and uppercase vowels
3. return same case of characters

**Clarifying Questions:**
---
1. empty array?
2. return new array or mutate?

**Mental Model:**
---

Data Structure
--------------
array

Algorithm
---------
Define vowels as "AEIOUaeiou".
Input of an array of string(s).
Remove vowels in each string in the array
  Iterate through each string in the array and delete any vowels by 
  iterating through vowels
Return array of strings w/o vowels

Code
----
=end

VOWELS = "AEIOUaeiou"

def remove_vowels(arr)
  arr.map! do |str|
    return_arr = []
    str.each_char do |char|
      return_arr << char unless VOWELS.include?(char)
    end
    return_arr.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']