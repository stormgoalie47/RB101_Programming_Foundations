=begin
========
PROBLEM
========
Input(s):
  array: two or more elements
  hash: :title, :occupation keys with values

Output(s): greeting with name, title, occupation

Problem Domain: greet with inputs interpolated into string

Implicit Requirements/Rules
  1. output full name, title, occupation
  2. string as return value of method

Clarifying Questions:
  1. fix capitilization? no based on example
  2. Allow other inputs such as appending 'Mr./Mrs.'?

==================================
Examples / Test Cases / Edge Cases
==================================
Examples
---------
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

Test Cases
-----------


Edge Cases
-----------


==============
Data Structure
==============
input: array, hash
output: string
working: string interpolation

=========
Algorithm
=========
`greetings` method:
- accept two arguments: array of names, hash of job title/occupation
- combine names in array to a single string
- combine job :title and :occupation to single string
- output string interpolation of name and title/occupation

=====
Code
=====
=end

def greetings(name, job)
  name = name.join(' ')
  job = job.values.join(' ')
  puts "Hello, #{name}! Nice to have a #{job} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })