=begin
========
PROBLEM
========
Input(s): word

Output(s): boolean

Problem Domain: spelling blocks: two letters per block

Implicit Requirements/Rules
  1. words cannot use both letters from given block
  2. each block only used once
  3. returns true if word can be spelled from this set of blocks

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
output: boolean
working: hash

=========
Algorithm
=========
`block_word?` method:
Accpets string as arg
Create new hash with blocks as strings as keys and 0 as value
Iterate through characters
  iterate through hash
    if char included in key, increase value by 1
Return false if any value is > 1
Return false if sum of values not equal to length of string
Else return true

=====
Code
=====
=end

def create_blocks
  {'BO' => 0, 'XK' => 0, 'DQ' => 0, 'CP' => 0, 'NA' => 0, 'GT' => 0, 'RE' => 0,
  'FS' => 0, 'JW' => 0, 'HU' => 0, 'VI' => 0, 'LY' => 0, 'ZM' => 0}
end

def block_word?(str)
  blocks = create_blocks
  str.chars.each do |char|
    blocks.keys.each do |block|
      blocks[block] += 1 if block.include?(char.upcase)
    end
  end
  return false if blocks.values.any? { |val| val > 1 }
  return false if blocks.values.sum != str.size
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true