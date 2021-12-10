def crunch(str)
  return_str = []
  str.chars.each do |char|
    return_str << char unless return_str[-1] == char
  end
  return_str.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''