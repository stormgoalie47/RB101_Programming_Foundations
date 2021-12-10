=begin
========
PROBLEM
========
Input(s): year as int

Output(s): integer of number of Friday the 13ths 

Problem Domain: 

Implicit Requirements/Rules
  1. year > 1752(gregorian claendar)
  2. 

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
output: int
working: int? date?

=========
Algorithm
=========
`friday_13th` method:
accept int as arg: `year`
Assign new fridays variable to 0
Iterate through each month on the 13th for input `year`
  Check if it is friday, if it is add 1 to count
return fridays

=====
Code
=====
=end

def friday_13th(year)
  fridays = 0
  1.upto(12) do |month|
    fridays += 1 if Time.new(year, month, 13).friday?
  end
  fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2