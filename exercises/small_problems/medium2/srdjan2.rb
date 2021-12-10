# Find the length of the longest substring in the given string that contains 
# exatly 2 characters "a" and 2 characters "e" in it.

# As an example, if the input was “aaee”, the substring (aaee) length would be 4.
# For a string "babanctekeaa", the longest substring is "babancteke" and its 
# length is 10.

# If the length of the input string is 0, return value must be -1 and if none of 
# the substrings contain 2 "a" and "e" characters return -1 as well.

=begin
========
PROBLEM
========
Input(s): string

Output(s): length of substring or -1

Problem Domain: 

Implicit Requirements/Rules
  1. 2 "a" and 2 "e"
  2. length of substring with requirements of 1
  3. if input string is empty or no possible substring, return -1
  4. longest substring if multiple

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
output: integer
working: array

=========
Algorithm
=========
`longest_ae` method:
- Split into substrings: `substrings` method
- Select strings with 2 'a' and 2 'e': `substrings_selected` method
- Return longest length of substring: `longest_sub` method
  - if criteria not met or input is empty string, return -1

`substrings` method:
- Convert string to array of characters
- Initialize empty array: `substring`
- Iterate through each character with index
  - Add character + 0 following chars to `substring`
  - Add character + 1 following chars to `substring`
  - repeat until array[index to -1 index].length equals that iteration substring length



`longest_string` method:
- accept array of substrings
- 

=====
Code
=====
=end

def substrings(str)
  substring = []
  str.chars.each_index do |index|
    last_index = - str[index..-1].size
    until last_index == 0
      substring << str[index..last_index]
      last_index += 1
    end
  end
  substring
end

def longest_string(substring)
  substring.map { |sub| sub.size }.max
end

def substrings_selected(substring)
  substring.select { |sub| sub.count('a') == 2 && sub.count('e') == 2 }
end

def longest_ae(str)
  return -1 if str == ''
  substring = substrings(str)
  substring = substrings_selected(substring)
  return -1 if substring == []
  longest_string(substring)
end

p longest_ae("aaee") == 4
p longest_ae("babanctekeaa") == 10
p longest_ae("xenoglossophobia") == -1
p longest_ae("pteromerhanophobia") == 18
p longest_ae("johannisberger") == -1
p longest_ae("secaundogenituareabb") == 16
p longest_ae("aaaa") == -1
p longest_ae("") == -1