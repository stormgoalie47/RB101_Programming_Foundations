=begin
Problem
------------------------
-  Inputs: string of words
-  Output: string with first/last letters swapped in every word

**Implicit Requirements:**
---
1. at least one letter and one word
2. only words and spaces

Data Structure
--------------
string, array

Algorithm
---------
SET to array of word for each element
Iterate through array and swap first letter with last letter
Combine array to string

=end

def swap(str)
  str = str.split
  str.map! do |word|
    next word if word.length == 1
    first = word[0]
    last = word[-1]
    last + word[(-word.length + 1)..-2] + first
  end
  str.join(" ")
end



p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'