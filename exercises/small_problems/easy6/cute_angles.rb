=begin
Problem
------------------------
-  Inputs: float representing angle b/w 0-360 degrees
-  Output: string of degrees, minutes, seconds

**Problem Domain:**
---

**Implicit Requirements:**
---
1. degree = 60 minutes
2. minute = 60 seconds
3. minutes and seconds should have 2 digits (leading digit if < 10)
4. degree follows with symbol, minutes with ", and seconds with '

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
Define 'dms' method that takes a single float as an argument.
Assign the whole number as the number of degrees.
Calculate the number of seconds in float. If integer as argument, minutes and seconds
  will be 00'00"
Add degree symbol to degree, " to minutes and ' to seconds
Concatenate the strings with leading 0 if necessary
Return string from method

remainder_to_mins_secs
-----------------------
Calculate the minutes by taking (decimal * remainder) and take that 
  divided by 1 (minutes), remainder is decimal of seconds
Calculate the seconds by taking (decimal * remainder) and round to whole number

Code
----
=end

DEGREE = "\xC2\xB0"

def remainder_to_mins_secs(remainder)
  minutes = 60 * remainder
  minutes, seconds = minutes.divmod(1)
  seconds = (60 * seconds).round
  minutes += 1 if seconds == 60
  seconds = 0 if seconds == 60
  { minutes: minutes, seconds: seconds}
end

def format_string(time)
  format(%(%d#{DEGREE}%02d'%02d"), time[:degree], time[:minutes], time[:seconds])
end

def dms(num)
  num = num % 360
  time = Hash.new
  time[:degree], remainder = num.divmod(1)
  time.merge!(remainder_to_mins_secs(remainder))
  format_string(time)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")