=begin
Problem
------------------------
-  Inputs: strign
-  Output: new string w consonants doubled

**Problem Domain:**
---

**Implicit Requirements:**
---
1. only consonants doubled
2. if capitalized, doubled should also be
3. consonants = all letters except "aeiou"

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
Set constant CONSONANTS to all letters and delete "aeiou"
Define `double_consonants` with single string argument
  Initialize empty return string
  Convert input string to array of characters and iterate through
    If char is consonant then append two of char to return string
    If char is not consonant then append one of char to return string
  Return string

Code
----
=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(str)
  string_out = ''
  str.chars.each do |char|
    case CONSONANTS.include?(char.downcase)
    when true then string_out << char * 2
    else string_out << char
    end
  end
  string_out
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""