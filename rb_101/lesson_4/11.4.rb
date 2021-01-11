ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Method 1:
hash = {}
min_age = 10000000
ages.each do |key, value|
  if value < min_age
    min_age = value
  end
end

#Method 2:
ages.values.min




# set the lowest age to the first value
# look at the second pair. if the value is lower, save that pair with the min_age as the new value.
# iterate over all the 