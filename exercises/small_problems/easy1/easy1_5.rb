def reverse_sentence(string)
  arr = string.split(" ")
  
  i = 0
  arr_rev = []
  while i < arr.length
    arr_rev.unshift(arr[i])
    i += 1
  end
  
  arr_rev.join(" ")
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''