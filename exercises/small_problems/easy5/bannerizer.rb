=begin
Problem
------------------------
-  Inputs: string
-  Output: string w/ banner

**Problem Domain:**
---

**Implicit Requirements:**
---
1. length will fit in terminal window
2. horizontal start/end with '+' and '-' between
3. vertical start/end with '+' and '|' between

**Clarifying Questions:**
---
1. 

**Mental Model:**
---

Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
print_in_box('')
+--+
|  |
|  |
|  |
+--+
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

Data Structure
--------------
string

Algorithm
---------
Take a line of text and display that with a border
The border at each corner will be a '+'.
The vertical line will be made up of three '|'
The horizontal line will be made up of a variable number of '-' based on the size
The text to display should be in the middle

Code
----
=end

def print_in_box(str)
  too_long?(str) ? more_than_80(str) : less_than_80(str)
end

def too_long?(str)
  str.length > 78
end

def less_than_80(str)
  top_bottom_line = "+#{'-' * (str.length+ 2)}+"
  empty_line = "|#{' ' * (str.length+ 2)}|"

  puts top_bottom_line
  puts empty_line
  puts "| #{str} |"
  puts empty_line
  puts top_bottom_line
end

def more_than_80(str)
  display_long_string(split_words_arr(str))
end

def split_words_arr(str)
  str_lines = Array.new(1, '')
  i = 0

  str.split.each do |word|
    if (str_lines[0].length) == 0
      str_lines[i] << "#{word}"
    elsif (str_lines[i].length + word.length) < 78
      str_lines[i] << " #{word}"
    else
      i += 1
      str_lines << "#{word}"
    end
   end
   str_lines
end

def display_long_string(arr)
  top_bottom_line = "+#{'-' * 80}+"
  empty_line = "|#{' ' * 80 }|"

  puts top_bottom_line
  arr.each do |line|
    puts empty_line
    puts "| #{line} |"
    puts empty_line
  end
  puts top_bottom_line
end

print_in_box('To boldly go where no one has gone before. Well how about nowww? Nowwwwwwwwwwwwwwwwwwwwwwww?')

print_in_box('')
print_in_box('To boldly go where no one has gone before.')