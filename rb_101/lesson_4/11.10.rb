munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# My solution
def age_group(age)
  if 0 <= age && age <= 17
    'kid'
  elsif 18 <= age && age <= 64
    'adult'
  elsif age >= 65
    'senior'
  else
    'Error - Invalid Age'
  end
end

group = 'age_group'
munsters.each_pair do |key, value|
  value['age']
  age_group(value['age'])
  value[group] = age_group(value['age'])
end

# Actual Solution, must more elegant
munsters.each_pair do |key, value|
  case value['age']
  when 0..18
    value['age_group'] = 'kid'
  when 19..64
    value['age_group'] = 'adult'
  else
    value['age_group'] = 'senior'
  end
end

