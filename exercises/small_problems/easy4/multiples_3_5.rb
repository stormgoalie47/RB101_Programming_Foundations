def multisum(num)
  (five_multiples(num) + three_multiples(num)).uniq.sum
end

def five_multiples(num)
  multiples = []
  i = 1
  loop do
    multiples << i if i % 5 == 0
    i += 1
    break if i > num
  end
  multiples
end

def three_multiples(num)
  multiples = []
  i = 1
  loop do
    multiples << i if i % 3 == 0
    i += 1
    break if i > num
  end
  multiples
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168