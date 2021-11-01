produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_hash)
  produce_keys = produce_hash.keys
  counter = 0
  select_fruit = {}

  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_hash[current_key]

    if current_value == 'Fruit'
      select_fruit[current_key] = current_value
    end

    counter += 1
  end

  select_fruit
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
