def calculate_bonus(number, bool)
  return number / 2 if bool

  0
end

puts calculate_bonus(2_800, true) == 1_400
puts calculate_bonus(1_000, false) == 0
puts calculate_bonus(50_000, true) == 25_000
