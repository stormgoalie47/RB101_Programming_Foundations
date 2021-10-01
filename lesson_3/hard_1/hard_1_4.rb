def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  
  return true
end

def is_an_ip_number?(num)
  num == num.to_i.to_s && (0..255).include?(num.to_i)
end

puts dot_separated_ip_address?("12.234.23")