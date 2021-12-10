DIGITS = {  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
            6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'}

def integer_to_string(num)
  str = ''
  i = num.digits.length - 1

  loop do
    str << DIGITS[num / (10 ** i) % 10]
    i -= 1
    break if i < 0
  end
  str
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'