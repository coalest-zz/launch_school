# Method 1:
# uppercase every letter that comes after a space

def titleize(str)
  str.capitalize!

  indexes_of_spaces = []
  arr = str.chars
  arr.each_index do |index|
    if arr[index] == ' '
      arr[index + 1].capitalize!
    end
  end
  arr.join
end
  
# Method 2:
# separate the string in words
# uppercase each word
# put the string back together

def titleize(str)
  words = str.split
  for word in words 
    word.capitalize!
  end
  words.join(' ')
end

p titleize('the boy wonder')
