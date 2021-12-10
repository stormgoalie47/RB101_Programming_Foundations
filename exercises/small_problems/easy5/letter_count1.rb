=begin
Problem
------------------------
-  Inputs: string w/ one or more spaces
-  Output: hash w/ number of words of sizes

**Problem Domain:**
---

**Implicit Requirements:**
---
1. 
2. 

Data Structure
--------------
Hash

Algorithm
---------
Convert string input to array
SET empty hash
Iterate through each array element
  GET size of word at each iteration
  Increment value of size of word (key) by 1

=end

def word_sizes(str)
  sizes = Hash.new(0)
  str.split.each do |word|
    sizes[word.length] += 1
  end
  sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}