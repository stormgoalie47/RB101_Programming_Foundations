=begin
Problem
------------------------
-  Inputs: integer representing number of digits in fibonacci
-  Output: index of number first number w/ that many digits

**Problem Domain:**
---
fibonacci series: series of numbers (starting with 1 1), with each subsequent number
  being sum of previous two numbers

**Implicit Requirements:**
---
1. integer input
2. integer output

**Clarifying Questions:**
---
1. 

**Mental Model:**
---


Data Structure
--------------
array

Algorithm
---------
Receive the number of digits needed
Iterate through fibonacci sequence until last integer has number of digits
Return the index of the first fibonacci number that has input number of digits

Determine number of digits
--------------------------
fib number divided by 10. If this is greater than or equal to 1, then it
  is at least two digits. Add to number_digits counter and repeat (loop) until
  division result is less than 1

Fibonacci sequence
------------------
First two in sequence are 1. If the array length is less than 2, append 1.
If the array length is greater than or equal to 2, add the previous two numbers
  and append it to array

Code
----
=end

def fibonacci(idx)
  if idx == 1 || idx == 2
    1
  else
    fibonacci(idx - 1) + fibonacci(idx - 2)
  end
end

p fibonacci(45)

def determine_num_digits(num)
  number_digits = 1
  until num / 10 < 1
    num /= 10
    number_digits += 1
  end
  number_digits
end

def find_fibonacci_index_by_length(num)
  idx = 1
  loop do
    fib = fibonacci(idx)
    break if determine_num_digits(fib) >= num
    idx += 1
  end
  idx
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144


###### THESE STALL OUT..... BOOOOOOOOOOOOO!
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847