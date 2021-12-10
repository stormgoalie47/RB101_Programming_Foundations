# method variable scope

# a = "a_out"

# def print_a
#   puts a if defined?(a)
#   a = "a_in"
#   puts a
# end

# print_a
# puts a

# block variable scope
# a = "a_out"

# 2.times do |n|
#   a = "a_in"
#   b = "b_in"
# end

# puts a
# puts b

# def print_my_name
#   puts "My name is:"
#   yield
# end

# name = "Addison"

# print_my_name { puts name }

# def upcase_name(name)
#   name = name.upcase!
# end

# name = 'addison'
# upcase_name(name)
# puts name

# def upcase_name!(name)
#   name = name.upcase
# end

# name = 'addison'
# upcase_name!(name)
# puts name

# a = [1, 2, 3]

# # Example of a method definition that mutates its argument permanently
# def mutate(array)
#   array.pop
# end
# puts a.object_id
# p "Before mutate method: #{a}"
# mutate(a)
# puts a.object_id
# p "After mutate method: #{a}"
