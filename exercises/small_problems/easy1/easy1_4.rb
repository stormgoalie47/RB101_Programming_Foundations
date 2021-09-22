vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  count_hash = {}
  
  array.each do |ele| 
    if count_hash[ele]
      count_hash[ele] = count_hash[ele] + 1
    else
      count_hash[ele] = 1
    end
  end    

  count_hash.each { |k, v| puts "#{k} => #{v}"}
end

count_occurrences(vehicles)