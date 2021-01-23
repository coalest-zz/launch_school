array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# Method 1
array.map do |hash|
  hash.map { |k,v| [k, v + 1] }.to_h
end

# Method 2: 
array.each_with_object([]) do |hash, a|
  #binding.pry
  incremented = {}
  hash.each do |k,v|
    incremented[k] = v +1
  end
  a << incremented
end