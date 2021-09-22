a = [1, 4, 8, 11, 15, 19]

# how would you search this array to find first element > 8 using Array#bsearch?

puts a.bsearch { |num| num > 8 }