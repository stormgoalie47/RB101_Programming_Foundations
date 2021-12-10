=begin
Problem
------------------------
-  Inputs: 6 numbers
-  Output: message whether 6th number input appears in the first 5

**Problem Domain:**
---

**Implicit Requirements:**
---
1. 6 numbers input by user
2. Output: "The number (6th) digit appears/doesn't appear in [array]"

**Clarifying Questions:**
---
1. does it have to be an integer? floats?

**Mental Model:**
---

Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 25, 15, 20, 17, 23, 17
  -  Output: The number 17 appears in [25, 15, 20, 17, 23].
-  Example 2
  -  Inputs: 25, 15, 20, 17, 23
  -  Output: The number 18 does not appear in [25, 15, 20, 17, 23].
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
Array, since output is array

Algorithm
---------
START
GET 6 nums from user
  Check if valid ints/float
SET array with 6 nums
IF last num is present in first 5 nums
  PRINT "The number (6th) digit appears in [array]."
ELSE
  PRINT "The number (6th) digit does not appear in [array]."
END

Code
----
=end

def valid_int?(num)
  num.to_i.to_s == num
end

def nth_num(num)
  case num
  when 1 then "1st"
  when 2 then "2nd"
  when 3 then "3rd"
  when 4 then "4th"
  when 5 then "5th"
  when 6 then "last"
  end
end

def get_six_numbers
  arr = []
  until arr.length == 6
    puts "==> Enter the #{nth_num(arr.length + 1)} number: "
    num = gets.chomp
    if valid_int?(num)
      arr << num.to_i
    else
      puts "That is not a valid integer. Try again."
    end
  end
  arr
end

def last_included?(array)
  array[0..-2].include?(array[-1])
end

def searching(array)
  case last_included?(array)
  when true then puts "The number #{array[-1]} appears in #{array[0..-2]}."
  when false then puts "The number #{array[-1]} does not appear in #{array[0..-2]}."
  end
end

searching(get_six_numbers)
