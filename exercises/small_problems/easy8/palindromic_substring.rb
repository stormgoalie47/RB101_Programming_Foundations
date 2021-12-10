=begin
Problem
------------------------
-  Inputs: 
-  Output: array of palindromic substrings

**Problem Domain:**
---
palindrome: reads same forwards as backwards

**Implicit Requirements:**
---
1. sorted in same sequence as they appear in string
2. duplicates should be included
3. case matters!
4. all characters matter
5. single characters are not palindromes

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
array

Algorithm
---------
Define `palindromes` method that takes string `str` as argument
  Initialize `substrings` to all substrings using `substrings` (array)
  Iterate through `substrings` assigning each string to `sub_str`
    If `sub_str` is `palindrome?` and length greater than 1, then it is selected
  Return `substrings` selected

Define `palindrome?` with `str` as argument
  If reveresed `str` equals `str`, return `true`
  Else return `false`

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

def palindrome?(str)
  str == str.reverse
end

def palindromes(str)
  substring = substrings(str)
  
  substring.select { |sub_str| palindrome?(sub_str) && sub_str.length > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]