def crunch(string)
  crunched = []
  string.each_char do |char|
    crunched << char unless crunched.last == char
  end
  crunched.join
end

def crunch(string)
  crunched = ''
  index = 0
  while index < string.length
    crunched << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  p crunched
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''