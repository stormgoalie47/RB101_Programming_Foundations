ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# my way
p ages.select! { |name, age| age < 100}

#their answer
p ages.keep_if { |_, age| age < 100 }