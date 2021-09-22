# get length and width (meters)
# display area in square meters and square feet
# 1 meter == 10.7639 square feet

puts ">> What is the length of the room?"
length = gets.chomp.to_f

puts ">> What is the width of the room?"
width = gets.chomp.to_f

area_meters = length * width
area_feet = area_meters * 10.7639

puts "The area of the room is #{area_meters} square meters (#{area_feet.round(2)} square feet)."