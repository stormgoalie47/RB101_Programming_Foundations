=begin
Problem
------------------------
-  Inputs: string
-  Output: hash w/ 3 entries: num lowercase chars, num uppercase chars, num neither

**Problem Domain:**
---

**Implicit Requirements:**
---
1. neither includes anything but alphas
2. symbols as keys: :lowercase, :uppercase, :neither
3. integers as values
4. always returns the hash even when empty string

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
hash

Algorithm
---------
Take input of string.
Initialize constants for Lowercase and Uppercase
Define `letter_case_count` method
  Initialize empty hash with 3 key-value pairs of value 0
  Iterate through characters in string
    Add 1 to lowercase key if lowercase
    Add 1 to uppercase key if uppercase
    Add 1 to neither key if not letter
Return hash

Code
----
=end

UPCASE = ('A'..'Z').to_a
LOWCASE = ('a'..'z').to_a

def letter_case_count(str)
  cases = { lowercase: 0, uppercase: 0, neither: 0 }

  str.each_char do |char|
    if LOWCASE.include?(char)
      cases[:lowercase] += 1
    elsif UPCASE.include?(char)
      cases[:uppercase] += 1
    else
      cases[:neither] += 1
    end
  end
  
  cases
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }