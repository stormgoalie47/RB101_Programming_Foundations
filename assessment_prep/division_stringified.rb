=begin

# Have the method division_stringified(num1, num2) take both parameters 
being passed, divide num1 by num2, and return the result as a string with 
properly formatted commas.
#
# If an answer is only 3 digits long, return the number with no commas.
#
# Example: if num1 is 123456789 and num2 is 10000 the output should be "12,346".
#
# Note: 2 divided by 3 should return '1'

========
PROBLEM
========
Input(s): two integers

Output(s): string of num1 / num2 with appropriate commas

Problem Domain: return formated division with commas

Implicit Requirements/Rules
  1. round up if decimal >= 0.5
  2. if digit is 3 digits or less, no commas

Clarifying Questions:
  1. Is cutoff for rounding 0.5?
  2. negative numbers?

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------
Given below

==============
Data Structure
==============
input: integer
output: string
working: string

=========
Algorithm
=========
`division_stringified` method:
- Accept two integers as arguments
- Divide `num1` by `num2` and round to nearest int
- Convert integer to string
- If length of string is less than or equal to 3, return string
- if string length > 3 `add_commas` helper method to format string and return return value

`add_commas` method:
- Accept string as argument
- Initialize empty new string
- Convert string to array of chars
- Iterate through array of chars with index
  - prepend last character of input to new string
  - if (index + 1) is divisible by 3 and not last number then prepend ","

=====
Code
=====
=end

def add_commas(str)
  output_str = ''
  str.chars.each_index do |idx|
    output_str.prepend(str[-(idx + 1)])
    output_str.prepend(',') if (idx + 1) % 3 == 0 && (idx + 1) != str.length
  end
  output_str
end

def division_stringified(num1, num2)
  result = (num1 / num2.to_f).round.to_s
  return result if result.length <= 3
  add_commas(result)
end


p division_stringified(2, 3) == "1"
p division_stringified(5, 2) == "3"
p division_stringified(7, 3) == "2"
p division_stringified(6874, 67) == "103"
p division_stringified(503394930, 43) == "11,706,859"
p division_stringified(1, 10) == "0"
p division_stringified(100000, 1) == "100,000"