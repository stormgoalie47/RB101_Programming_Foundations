=begin
Problem
------------------------
-  Inputs: string
-  Output: new string with cases of letters switched

**Problem Domain:**
---

**Implicit Requirements:**
---
1. ignore non-letters and leave within string
2. 

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
string

Algorithm
---------
Define `swapcase` method with single parameter `str`
  initialize new string `return_str`
  Iterate through each character
    If upcase, make downcase and append to `return_str`
    If downcase, make upcase and append to `return_str`
    If not letter, append to `return_str`
Return `return_str`

Code
----
=end

def swapcase(str)
  return_str = ''

  str.each_char do |char|
    if char.downcase != char
      return_str << char.downcase
    elsif char.upcase != char
      return_str << char.upcase
    else
      return_str << char
    end
  end

  return_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'