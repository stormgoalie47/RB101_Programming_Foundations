# prompt for bill amount
# prompt for tip rate
# compute tip
# display tip and total amount of bill

puts "What is the bill amount?"
bill = gets.chomp.to_f

puts "What is the tip rate percentage?"
tip_rate = gets.chomp.to_f / 100

tip_amount = bill * tip_rate
total_amount = format("%#.2f", (bill + tip_amount))
tip_amount = format("%#.2f", tip_amount)

puts "The tip is $#{tip_amount}."
puts "The total amount is $#{total_amount}."