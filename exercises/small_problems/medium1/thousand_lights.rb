=begin
========
PROBLEM
========
Input(s): integer (num switches)

Output(s): array of lights that are on

Problem Domain: 

Implicit Requirements/Rules
  1. switches labeled 1 to `n`
  2. lights initially off
  3. walt through and turn each on
  4. second pass, toggle numbers divisible by 2
  5. third pass, toggle numbers divisible by 3
  6. repeat until `n` repitions

Clarifying Questions:
  1. zero lights?

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------
p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]


==============
Data Structure
==============
input: integer
output: array
working: hash

=========
Algorithm
=========
`lights_on` method
- accpets integer `num` as arg
- initialize hash with keys 1 to `num` and values of `false`
- increasing `n` from 1 to `num`, iterate through hash changing value of key to 
    opposite boolean if key is divisible by `n`
- return keys in an array only if value is `true`

=====
Code
=====
=end

def lights_on(num)
  lights = {}
  1.upto(num) { |n| lights[n] = false }
  1.upto(num) do |n|
    lights.each do |light, on_off|
      lights[light] = !on_off if light % n == 0
    end
  end

  lights.select { |light, on_off| on_off }.keys
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
p lights_on(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]