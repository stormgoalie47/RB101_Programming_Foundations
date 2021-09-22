# ask user for int > 0
# ask if determine sum or product of all numbers between1 and entered int
# calc sum
# calc product
# print product/sum

puts ">> Please enter integer greater than 0:"
num = gets.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation.downcase == 's'
  total = 0
  1.upto(num) { |num| total += num }

  puts "The sum of the integers between 1 and #{num} is #{total}."
elsif operation.downcase == 'p'
  total = 1
  1.upto(num) { |num| total *= num}
  
  puts "The product of the integers between 1 and #{num} is #{total}."
else
  puts "Unknown operation. Try again."
end