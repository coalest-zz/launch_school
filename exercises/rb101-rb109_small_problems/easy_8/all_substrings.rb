def leading_substrings(string)
  substrings = []
  string.chars.each_with_index do |_, i|
    substrings[i] = string.chars[0..i].join
  end
  substrings 
end

def substrings(string)
  result = []
  0.upto(string.size) do |int|
    result[int] = leading_substrings(string[int..-1])
  end
  result.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]