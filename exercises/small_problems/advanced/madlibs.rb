=begin
========
PROBLEM
========
Input(s): 

Output(s): 

Problem Domain: 

Implicit Requirements/Rules
  1. reads in some text from text file
  2. outputs random 

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

ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS      = %w(fox dog head leg cat tail).freeze
VERBS      = %w(spins bites licks hurdles).freeze
ADVERBS    = %w(easily lazily noisly excitedly).freeze

File.open('madlib.txt') do |file|
  file.each do |line|
    p line
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end