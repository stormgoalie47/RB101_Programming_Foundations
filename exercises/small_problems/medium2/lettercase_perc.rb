=begin
========
PROBLEM
========
Input(s): string

Output(s): hash: percent of characters lowercase, uppercase, neither

Problem Domain: 

Implicit Requirements/Rules
  1. input at least 1 character
  2. spaces count as neither
  3. round to 1 decimal

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
input: string
output: hash
working: hash/ints

=========
Algorithm
=========
`letter_percentages` method:
Create hash with default value of 0.0
Calculate number of characters in string
Calculate number of uppercase characters \A-Z\
  assign to hash :uppercase
Calculate number of lowercase characters: \a-z\
  assign to hash :lowercase
Calculate number of neither characters: total - (upper + lower)
  assign to hash :neither

=====
Code
=====
=end

def letter_percentages(str)
  percentages = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }
  total_chars = str.size.to_f
  percentages[:lowercase] = (str.count('/a-z/') / total_chars * 100).round(1)
  percentages[:uppercase] = (str.count('/A-Z/') / total_chars * 100).round(1)
  percentages[:neither] = 100 - percentages[:lowercase] - percentages[:uppercase]
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('abcdefGHI') #== { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }