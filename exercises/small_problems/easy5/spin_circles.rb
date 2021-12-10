def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

test = "hello world"

spin_me(test)

