def center_of(string)
  mid_odd = string.size / 2
  if string.size % 2 == 1
    string[mid_odd]
  else
    string[(mid_odd - 1)..mid_odd]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'