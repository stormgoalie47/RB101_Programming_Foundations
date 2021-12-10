=begin
Problem
------------------------
-  Inputs: positive integer
-  Output: integer with digits reversed

**Problem Domain:**
---

**Implicit Requirements:**
---
1. same number of digits input/output
2. do not include leading zeroes

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
string -> int

Algorithm
---------
Define `reversed_number` with single integer as argument
  Convert the integer to a string
  Reverse the string's order
  Convert to integer and return

Code
----
=end

def reversed_number(int)
  int.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1