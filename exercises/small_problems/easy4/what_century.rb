def century(year)
  century = (year / 100) + 1
  century = year / 100 if year % 100 == 0
  century = century.to_s

  if ["0", "4", "5", "6", "7", "8", "9"].include?(century[-1])
    "#{century}th"
  elsif ["11", "12", "13"].include?(century[-2, 2])
    "#{century}th"
  elsif century[-1] == "1"
    "#{century}st"
  elsif century[-1] == "2"
    "#{century}nd"
  elsif century[-1] == "3"
    "#{century}rd"
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'