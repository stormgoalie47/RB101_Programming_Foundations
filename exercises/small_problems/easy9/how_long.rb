=begin
========
PROBLEM
========
Input(s): string

Output(s): array of strings

Problem Domain: 

Implicit Requirements/Rules
  1. return string: word + length of word
  2. words: separated by one space

Clarifying Questions:
  1. 

==================================
Examples / Test Cases / Edge Cases
==================================
Examples

==============
Data Structure
==============
input: string
output: array of strings
working: array

=========
Algorithm
=========
`word_lengths` method:
Accept string as argument
Convert string to array of words.
Iterate through words array
  append a space and the string length to the string of each iteration
Return array

=====
Code
=====
=end

def word_lengths(str)
  str.split.map { |word| "#{word} #{word.length}"}
end


p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []