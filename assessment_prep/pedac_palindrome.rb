def valid?(num, s)
  num.is_a?(Integer) && s.is_a?(Integer) && num >= 0 && s >= 0
end

def palindrome?(num)
  num.to_s == num.to_s.reverse && num.to_s.length > 1
end

def palindrome(num, s)
  return "Not valid" unless valid?(num, s)
  palindromes = []
  loop do
    break if palindromes.size >= s
    palindromes << num if palindrome?(num)
    num += 1
  end
  palindromes
end

p palindrome(6,4) == [11,22,33,44]
p palindrome(75,1) == [77]
p palindrome(101,2) == [101,111]
p palindrome(20,0) == []
p palindrome(0,4) == [11,22,33,44]
p palindrome("ACCDDCCA",3) == "Not valid"
p palindrome(773,"1551") == "Not valid"
p palindrome(-4505,15) == "Not valid"
p palindrome(4505,-15) == "Not valid"