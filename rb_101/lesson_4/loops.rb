produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  new_hsh = {}
  fruit_hsh_keys = hsh.keys
  counter = 0
  
  loop do
    break if counter == hsh.size

    if hsh[fruit_hsh_keys[counter]] == 'Fruit'
      new_hsh[fruit_hsh_keys[counter]] = 'Fruit'
    end
    
    counter += 1
  end

  new_hsh
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}