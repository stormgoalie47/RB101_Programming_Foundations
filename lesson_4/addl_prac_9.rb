words = "the flintstones rock"  # => words = "The Flintstones Rock"

words.split.map { |word| word.capitalize }.join(' ')