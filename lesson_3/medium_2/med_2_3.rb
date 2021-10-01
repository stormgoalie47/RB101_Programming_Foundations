def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# pumpkins
puts "My array looks like this now: #{my_array}"
# ["pumpkins", "rutabaga"]

# The String#+= operation is re-assignment and creates a new String object. The reference to this
# new object is assigned to a_string_param. The local variable a_string_param now points to
# "pumpkinsrutabaga", not "pumpkins". It has been re-assigned by the String#+= operation. This
# means that a_string_param and my_string no longer point to the same object.