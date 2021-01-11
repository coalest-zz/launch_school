ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Method 1:
ages.values.sum

# Method 2:
ages_sum = 0
ages.each_value do |value|
  ages_sum += value
end

p ages_sum