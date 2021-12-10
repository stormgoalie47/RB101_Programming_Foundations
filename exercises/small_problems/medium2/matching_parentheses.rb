=begin
========
PROBLEM
========
Input(s): string

Output(s): boolean

Problem Domain: 

Implicit Requirements/Rules
  1. true if if parentheses properly balanced
  2. false if not
  3. properly balanced: matching `(` and `)`

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
output: boolean
working: string

=========
Algorithm
=========
`blanced?` method:
Accept string as argument
Initialize count variable to 0
Iterate through characters
Count number of `(` followed by `)`
  increment count by 1 if `(`, decrement by 1 if `)`
  return false if count < 0 at any point
If numbers are equal, true
Else, false

=====
Code
=====
=end

def balanced?(str)
  count = 0
  str.chars.each do |char|
    case char
    when '(' then count += 1
    when ')' then count -= 1
    end
    return false if count < 0
  end
  count.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false