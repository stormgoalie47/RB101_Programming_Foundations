statement = "The Flintstones Rock"

# my way
frequency = {}

statement.split("").each do |letter|
  next if letter == " "
  
  if frequency[letter]
    frequency[letter] += 1
  else
    frequency[letter] = 1
  end
end

p frequency

# their way
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result