=begin
========
PROBLEM
========
Input(s): int

Output(s): next featured num greater than input

Problem Domain: 
featured num: odd num that is multiple of 7, digits occur only once each

Implicit Requirements/Rules
  1. odd num
  2. mult of 7
  3. digits occur once
  4. error if no possible future num: 9_876_543_201 or greater

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
working: int

=========
Algorithm
=========
`featured` method:
accept int as arg
if >= 9_876_543_201 return "There is no possible number that fulfills those requirements"
Starting with int + 1 check if featured num:
  multiple of 7, if not next
  odd num, if not next
  digits occur once
    convert to string to array of unique values -> if length of array is length of string
      only occur once, else next
  return featured num

=====
Code
=====
=end

def featured(int)
  return "There is no possible number that fulfills those requirements" if int >= 9_876_543_201
  loop do
    int += 1
    next unless int % 7 == 0 && int.odd?
    int_str = int.to_s
    next unless int_str.chars.uniq.size == int_str.size
    return int
  end
end

# def featured(number)
#   number += 1
#   number += 1 until number.odd? && number % 7 == 0

#   loop do
#     number_chars = number.to_s.split('')
#     return number if number_chars.uniq == number_chars
#     number += 14
#     break if number >= 9_876_543_210
#   end

#   'There is no possible number that fulfills those requirements.'
# end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999)