=begin
========
PROBLEM
========
Input(s): 

Output(s): 

Problem Domain: 
rational number: any number that can be represented as teh result of the division b/w two integers
unit fraction: rational number where numerator is `1`
egyptian fraction: sum of series of distinct unit fractions (no two are same)

Implicit Requirements/Rules
  1. rational num as arg, returns array of denominators part of egyptian fraction
  2. array of nums as arg, calculates resulting rational number

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
input: 
output: 
working:

=========
Algorithm
=========
`egytpian` method:
- Accept rational num as arg `target_sum`
- Create new empty array `egyptian_denominators`
- Create new `sum` variable and assign to `0`
- Iterate from 1 to ??? until `sum` == `target_sum`
  - If (1/num) added to `sum` <= `target_sum`
    - reassign `sum` to the sum
    - add num to `egyptian_denominators`
- Return `egyptian_denominators`

`unegyptian` method:
- Accept array of nums as arg: `egyptian_denominators`
- Calculate `rational_number`
  - Iterate through `egyptian_denominators`
    - add (1.0/num) to `rational_number`
- Assign numerator to 1 and denominator to 1
- Loop until numerator / denominator == `rational_number`
  - If < `rational_number`
    - increment numerator by 1
  _ If > `rational_number`
    - increment denominator by 1
- Return Rational number

=====
Code
=====
=end

require "pry"

def calculate_rational_num(egyptian_denominators)
  rational_num = 0
  egyptian_denominators.each { |denominator| rational_num += 1.0 / denominator }
  rational_num
end

def unegyptian(egyptian_denominators)
  rational_number = calculate_rational_num(egyptian_denominators)
  numerator, denominator = [1, 1]
  loop do
    quotient = numerator.to_f / denominator
    break if quotient == rational_number
    if quotient < rational_number
      numerator += 1
    elsif quotient > rational_number
      denominator += 1
    end
  end
  Rational(numerator, denominator)
end

def egyptian(rational_num)
  rational_num = rational_num.to_f
  egyptian_denominators = []
  sum = 0
  num = 1.0
  loop do
    binding.pry
    break if sum == rational_num
    if (1 / num) + sum <= rational_num
      sum += (1 / num)
      egyptian_denominators << num.to_i
    end
    num += 1
  end
  egyptian_denominators
end

# p egyptian(Rational(2, 1)) == [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1)) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

##### COULD NOT GET THESE TO WORK..........
# p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)