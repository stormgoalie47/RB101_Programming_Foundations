=begin
========
PROBLEM
========
Input(s): angle (0-360 degrees)

Output(s): String representing angle in degrees, minutes, seconds

Problem Domain: 

Implicit Requirements/Rules
  1. degree symbol to represent degree
  2. `'` to represent minutes
  3. `"` to represent seconds
  4. degree = 60 minutes
  5. minute = 60 seconds
  7. 360 = 0
  6. 0 == 0degree00'00"
  7. DEGREE = "\xC2\xB0"

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------

==============
Data Structure
==============
input: int
output: string
working: ints

=========
Algorithm
=========
`dms` method: 
- Accept int as input: `angle`
- Get remainder and assign to angle: `angle` / 360
- Set `degree` equal to `angle` / 1 and `minutes` equal to remainder
- Set `minutes` equal to `minutes` * 60
- Set `seconds` equal to `minutes` % 1 * 60
- Format return string

=====
Code
=====
=end

DEGREE = "\xC2\xB0"

def dms(angle)
  angle %= 360
  degrees, minutes = angle.divmod(1)
  minutes *= 60
  minutes, seconds = minutes.divmod(1)
  seconds *= 60
  minutes, seconds = minutes.round, seconds.round
  minutes, seconds = minutes + 1, seconds - 60 if seconds == 60
  degrees, minutes = degree + 1, minutes - 60 if minutes == 60

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")