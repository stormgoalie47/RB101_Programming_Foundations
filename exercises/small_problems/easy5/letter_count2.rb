def word_sizes(str)
  sizes = Hash.new(0)
  str.split.each do |word|
    sizes[letter_length(word)] += 1
  end
  sizes
end

def letter_length(word)
  word.gsub(/[^a-zA-Z]/, "").length
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}