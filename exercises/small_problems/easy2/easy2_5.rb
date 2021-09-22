# ask for user name
# greet user
# if user writes "name!", the computer yells back

print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  puts "Hello #{name} Why are you screaming?".upcase
else
  puts "Hello #{name}!"
end