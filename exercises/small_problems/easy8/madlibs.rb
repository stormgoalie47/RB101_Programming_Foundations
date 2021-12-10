=begin
Problem
------------------------
-  Inputs: noun, verb, adjective, adverb (strings)
-  Output: Sentence (string)

**Problem Domain:**
---
mad libs: story template with blank words to fill in

**Implicit Requirements:**
---
1. 
2. 

**Clarifying Questions:**
---
1. 

**Mental Model:**
---
Example
-------
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!


Data Structure
--------------


Algorithm
---------
Get `noun` from user
Get `verb` from user
Get `adjective` from user
Get `adverb` from user
Output concatenated "Do you " + verb + " your " + noun + adverb "? That's hilarious"

Code
----
=end

print "Enter a noun: "
noun = gets.chomp
print "Enter a verb: "
verb = gets.chomp
print "Enter a adjective: "
adjective = gets.chomp
print "Enter an adverb: "
adverb = gets.chomp

sentence_1 = "\nDo you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "\nDid your #{adjective} #{noun} really just #{adverb} #{verb} Chris?"
sentence_3 = "\nLaunch School's #{adjective} #{noun} wasn't #{adverb} #{verb}ing."

puts [sentence_1, sentence_2, sentence_3].sample