=begin
========
PROBLEM
========
Input(s): text file

Output(s): longest sentence, number of words of longest sentence

Problem Domain: 

Implicit Requirements/Rules
  1. longest sentence: based on number of words
  2. sentence ends w/: . ! ?
  3. word: sequence of characters that are not spaces
  4. print the number of words in longest sentence
  5. -- counts as a word

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
input: string from text file
output: strings
working: array

=========
Algorithm
=========
Import text file as string
Split sentences at `.!?` into array of sentences
Create new variable `longest_sentence_length` to 0
Create new variable `longest_sentence` to 0
Iterate through sentences array
  split sentences into words at spaces
  Calculate how many words in sentence
    If > longest_sentence assign size to `longest_sentence_length` and sentence
      to `longest_sentence`
    Else next iteration
Output String of sentence
Output Sentence length

=====
Code
=====
=end

text = File.read('gutenberg.txt')
sentences = text.split(/[\.\?\!]/)
longest_sentence_length = 0
longest_sentence = ''

sentences.each do |sentence|
  if sentence.split(' ').size > longest_sentence_length
    longest_sentence_length = sentence.split(' ').size
    longest_sentence = sentence.strip
  end
end

puts longest_sentence
puts "The length is: #{longest_sentence_length}"