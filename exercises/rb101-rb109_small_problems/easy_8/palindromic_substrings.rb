require 'pry'

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

def palindrome?(string)
  string.size > 1 && string == string.reverse
end

def palindromes(string)
  string = string.downcase.gsub(/[^a-z]/, '')
  subs = substrings(string)
  subs.select { |str| palindrome?(str.downcase) }
end

# p palindrome?('a')
# p palindrome?("AbcbA")
# p palindrome?("Abcba")
# p palindrome?("Abc-bA")

p palindromes('abcd') == []
p palindromes('mAdam') == ['mAdam', 'Ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]