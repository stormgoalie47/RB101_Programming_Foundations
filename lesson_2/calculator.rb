#asks for 2 numbers
#asks for operation (+ - * /)
#displays result

puts "Let's Calculate!"
puts "What is the first number?"
num1 = gets.chomp
puts "What is the second number?"
num2 = gets.chomp
puts "What operation would you like to do? + - * /"
oper = gets.chomp

puts num1 + " " + oper + " " + num2 + " ="
puts eval"#{num1} #{oper} #{num2}"