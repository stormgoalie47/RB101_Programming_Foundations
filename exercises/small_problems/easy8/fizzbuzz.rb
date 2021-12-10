=begin
Problem
------------------------
-  Inputs: start num, end num
-  Output: print numbers/"FIZZ"/"FIZZBUZZ"/"BUZZ"

**Problem Domain:**
---

**Implicit Requirements:**
---
1. print number unless divisible by 3 or 5
2. print "Fizz" if divisible by only 3
3. print "Buzz" if divisible by only 5
4. print "FizzBuzz" if divisible by 3 & 5

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Data Structure
--------------
String

Algorithm
---------
Define `fizzbuzz` with two integer arguments (start, end)
Initialize empty string `string_out`
Count up from `start` to `end`
  If divisible by 3 & 5, append "FizzBuzz, " to string
  If divisible by 3, append "Fizz, " to string
  If divisible by 5, append "Buzz, " to string
  Else, append "number," to string
output string excluding final `, `

Code
----
=end

def fizzbuzz(first, last)
  string_out = ''
  first.upto(last) do |num|
    if num % 3 == 0 && num % 5 == 0
      string_out += "FizzBuzz, "
    elsif num % 3 == 0
      string_out += "Fizz, "
    elsif num % 5 == 0
      string_out += "Buzz, "
    else
      string_out += "#{num}, "
    end
  end
  puts string_out[0...-2] + "."
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 
                #    8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz