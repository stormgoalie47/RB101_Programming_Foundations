def string_to_integer(str)
  str = str.chars
  integer = 0
  str.each_with_index do |num, idx|
    case num
    when "1" then integer += 1 * (10 ** (str.length - idx - 1))
    when "2" then integer += 2 * (10 ** (str.length - idx - 1))
    when "3" then integer += 3 * (10 ** (str.length - idx - 1))
    when "4" then integer += 4 * (10 ** (str.length - idx - 1))
    when "5" then integer += 5 * (10 ** (str.length - idx - 1))
    when "6" then integer += 6 * (10 ** (str.length - idx - 1))
    when "7" then integer += 7 * (10 ** (str.length - idx - 1))
    when "8" then integer += 8 * (10 ** (str.length - idx - 1))
    when "9" then integer += 9 * (10 ** (str.length - idx - 1))
    end
  end
  integer
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570