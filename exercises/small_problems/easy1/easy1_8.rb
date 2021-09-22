# Get array from user
# Sum numbers of array
# Return integer

def average(numbers)
  sum = 0
  numbers.each { |number| sum = sum + number }
  sum / numbers.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40