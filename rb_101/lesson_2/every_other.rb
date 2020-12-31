def every_other(old_str)
  new_str = []
  old_str.each do |x|
    if x%2 == 0
      new_str << old_str[x]
    end
  end
  return new_str
end

string = [1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5]
puts every_other(string)