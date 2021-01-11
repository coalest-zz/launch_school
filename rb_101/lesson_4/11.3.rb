ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Method 1
ages.select! do |_, value|
  value < 100
end

# Method 2
ages_under_100 = {}
ages.each do |key, value|
  if value < 100
    ages_under_100[key] = value
  end
end

# Solution from Launch School 
ages.keep_if { |_, age| age < 100 }
