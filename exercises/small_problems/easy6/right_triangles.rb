=begin
Problem
------------------------
-  Inputs: positive integer (n)
-  Output: right triangle w/ n "*" on sides (right, bottom)

**Problem Domain:**
---

**Implicit Requirements:**
---
1. hypotenuse is bottom left to top right
2. 

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Examples / Test Cases / Edge Cases
----------------------------------
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

Data Structure
--------------
String

Algorithm
---------
Input of integer is used to input `n` stars in final
Initialize counter (i)
Doing n times
  output (n-i) spaces appended to i "*"'s 

Code
----
=end

def triangle(n)
  n.times { |i| puts "#{i}#{" " * (n - i)}#{"*" * (i + 1)}" }
end

triangle(5)
triangle(9)