=begin
Problem
------------------------
-  Inputs: string
-  Output: new string w/ every word capitalized and others lowercased

**Problem Domain:**
---

**Implicit Requirements:**
---
1. do not capitalize words within quotes
2. 

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 
  -  Output: 
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
Array

Algorithm
---------
Input of string reassigned to downcased string
Convert to array of words with each element split at " ".
Iterate through array and capitalize each word
Return array

Code
----
=end

def word_cap(str)
  str.downcase.split.map { |word| word.capitalize }.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'