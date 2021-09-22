def abs_odd?(num)
    num % 2 != 0
end

puts abs_odd?(2)    # => false
puts abs_odd?(5)    # => true
puts abs_odd?(-17)  # => true
puts abs_odd?(-8)   # => false
puts abs_odd?(0)    # => false
puts abs_odd?(7)    # => true