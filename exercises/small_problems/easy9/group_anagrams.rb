=begin
========
PROBLEM
========
Input(s): array of strings

Output(s): groups that are anagrams

Problem Domain: anagram: words with same exact letters in different order

Implicit Requirements/Rules
  1. array of anagram strings on new line for each group
  2. 

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------


Test Cases
-----------


Edge Cases
-----------


==============
Data Structure
==============
input: 
output: 
working:

=========
Algorithm
=========

=====
Code
=====
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.chars.sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end