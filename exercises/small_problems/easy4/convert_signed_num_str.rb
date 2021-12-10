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

def signed_integer_to_string(num)
  sign = if num > 0
            '+'
         elsif num < 0
            num = -num
            '-'
         else
            ''
         end
  integer_to_string(num).prepend(sign)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'