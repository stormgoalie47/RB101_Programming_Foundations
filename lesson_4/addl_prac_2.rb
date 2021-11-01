ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# my way
p ages.values.sum # => 6174

# LS 1
total_ages = 0
ages.each { |_,age| total_ages += age }
total_ages # => 6174

# LS 2
ages.values.inject(:+) # => 6174