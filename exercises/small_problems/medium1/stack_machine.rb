=begin
========
PROBLEM
========
Input(s): string

Output(s): 

Problem Domain: 
stack: list of values that grows and shrinks dynamically
register: current value (not part of stack)
Operations w/ two values uses register and topmost item from stack popped and 
  result stored in register

Implicit Requirements/Rules
  1. `n` add `n` to register, don't modify stack
  2. `PUSH` register value to stack, leave value in register
  3. `ADD` pop value from stack and add to register value, store in register
  4. `SUB` pop value from stack and subract from register, store register
  5. `MULT`
  6. `DIV`
  7. `MOD`
  8. `POP` remove topmost item from stack and place in register
  9. `PRINT` print register value
  10. register initialized to `0`

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
input: string
output: integer
working: array

=========
Algorithm
=========
`minilang` method:
- accept string as argument (operations)
- initialize `register` to 0
- initialize `stack` to empty array
- Split string into array of words (separate by " ")
- Iterate through `operations` array
  - IF integer, reassign `register` to integer
  - IF `PUSH`, prepend register to `stack`
  - IF `PRINT`, print `register`
  - IF `POP`, assign first element of `stack` to `register`
  - IF `ADD`, remove first value from `stack` and add to `register`, store to `register`
  - IF `SUB`....
  - IF `MULT`....
  - IF `DIV`....
  - IF `MOD`....

=====
Code
=====
=end

def int?(num)
  num.to_i.to_s == num
end

def minilang(operations)
  register = 0
  stack = []

  operations.split.each do |input|
    case input
    when 'PUSH' then stack.prepend(register)
    when 'PRINT' then puts register
    when 'POP' then register = stack.shift
    when 'ADD' then register = register + stack.shift
    when 'SUB' then register = register - stack.shift
    when 'MULT' then register = register * stack.shift
    when 'DIV' then register = register / stack.shift
    when 'MOD' then register = register % stack.shift
    else register = input.to_i
    end
  end
  puts '---------------------'
end

minilang('PRINT')
# # 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)