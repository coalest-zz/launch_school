def concat(array_of_strings)
  str = ''
  for i in 0..array_of_strings.length - 1
    str += array_of_strings[i]
  end
end

string = ["test", "ing"]
puts concat(string)
