require 'pry'

DIGITS = { "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
           "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

def string_to_signed_integer(str)
  str = str.chars
  negative = true if str[0] == "-"
  str.delete("+")
  str.delete("-")
  
  i = 1
  str.map! do |num| 
    num = DIGITS[num] * (10 ** (str.length - i))
    i += 1
    num
  end

  return (0 - str.sum) if negative
  str.sum
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100