# Get age
# Get retirement age
# Calculate how many years
# Calculate year of retirement

print "How old are you? "
age = gets.to_i

print "What age would you like to retire at? "
retirement_age = gets.to_i

years_to_retire = retirement_age - age
current_year = Time.now.year
year_retire = current_year + years_to_retire

puts "It's #{current_year}. You will retire in #{year_retire}."
puts "Only #{years_to_retire} of work to go..."
