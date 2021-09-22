def sum(number)
  number.to_s.split('').reduce { |sum, n| sum.to_i + n.to_i }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45