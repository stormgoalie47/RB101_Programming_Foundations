arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr_2 = arr.sort_by do |sub_arr|
  sub_arr.select do |ele|
    ele.odd?
  end
end

p arr_2