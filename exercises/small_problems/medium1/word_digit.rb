=begin
========
PROBLEM
========
Input(s): string

Output(s): worded numbers (0-9) converted to digits

Problem Domain: 

Implicit Requirements/Rules
  1. only worry about 0-9
  2. return same string

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
output: string
working: string

=========
Algorithm
=========
Constant hash with strings of numbers as keys and integer strings as values
`word_to_digit` method:
Accept single string arg
Iterate through each key-value pair
  replace word version of number (0-9) with value of corresponding key in original string
Return original string

=====
Code
=====
=end

NUM_STRINGS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
               'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}.freeze

def word_to_digit(str)
  NUM_STRINGS.keys.each do |num|
    str.gsub!(/\b#{num}\b/, NUM_STRINGS[num])
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'