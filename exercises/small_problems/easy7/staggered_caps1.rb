=begin
Problem
------------------------
-  Inputs: string
-  Output: new string with staggered capitalization

**Problem Domain:**
---

**Implicit Requirements:**
---
1. non-letter characters count in counting, but not altered
2. first letter capitalized

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
String

Algorithm
---------
Define `staggered_case` with single string argument, `str`
Initialize `idx` variable to 0 to represent index of `str`
Initialize empty string `return_str`
Iterate through characters
  If `idx` is 0 or even, then capitalize and append to `return_str`
  Else downcase and append to `return_str`
Return `return_str`

Code
----
=end

def staggered_case(str)
  idx = 0
  return_str = ''

  str.each_char do |char|
    if idx == 0 || idx.even?
      return_str << char.upcase
    else
      return_str << char.downcase
    end
    idx += 1
  end
  
  return_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'