def leading_substrings(string)
  substrings = []
  string.chars.each_with_index do |_, i|
    substrings[i] = string.chars[0..i].join
  end
  substrings 
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']