def repeater(string)
  doubled = ''
  string.chars.each do |char|
    doubled << (char*2)
  end
  doubled
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''