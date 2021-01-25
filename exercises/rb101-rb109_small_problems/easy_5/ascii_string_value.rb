def ascii_value(str)
  str.chars.reduce(0) { |sum, char| sum + char.ord }
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

#Solution:
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

# Further exploration
# String#chr is the method to go from ascii number to a character
# 'A'.ord.chr == 'A'
# If you try it with a long string, only the first character is saved:
# 'Apple'.ord.chr == 'A'