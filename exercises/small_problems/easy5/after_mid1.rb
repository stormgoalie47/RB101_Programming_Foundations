=begin
Problem
------------------------
-  Inputs: integer (pos or neg)
-  Output: string of military time

**Problem Domain:**
---

**Implicit Requirements:**
---
1. neg input: count backwards from midnight (00:00)
2. pos input: count up from midnight (00:00)
3. 24 hour format

**Clarifying Questions:**
---
1. 

**Mental Model:**
---
1440 minutes in day. Divide by 60 to get hour number. Remainder will be minutes.
If greater than 1440, divide by 1440 first


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


Algorithm
---------

SET negative to true IF negative
SET int to int % 1440
SET hour = integer / 60 IF negative == false
SET hour = 24 - (integer / 60) IF negative == true
SET minute = integer % 60 IF negative == false
SET minute = 24 - (integer % 60) IF negative == true
CONVERT and Concatenate to String w/ ":"


Code
----
=end

def time_of_day(int)
  negative = int < 0 ? true : false
  int = -int if negative
  int = int % 1440
  hour, minute = int.divmod(60)
  if negative == true
    hour = 23 - hour
    minute = minute == 60 ? 0 : 60 - minute
  end
  format("%02d:%02d", hour, minute)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"