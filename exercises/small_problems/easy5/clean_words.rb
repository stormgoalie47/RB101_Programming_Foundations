=begin
Problem
------------------------
-  Inputs: string of lowercased words/non-alphabetic characters
-  Output: 

**Problem Domain:**
---

**Implicit Requirements:**
---
1. 
2. 

Data Structure
--------------


Algorithm
---------

=end

def cleanup(str)
  str.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?")# == ' what s my line '