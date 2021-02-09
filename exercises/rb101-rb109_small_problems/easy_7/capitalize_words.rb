=begin
input string (of words)
output new string with same number of characters
explicit
beginning of each word should be capitalized
all other charactres should be lowercased
non-black characters are words
ignores words in quotes (first character isnt a letter)
algo

lowercase the whole string
split the words where spaces are
capitalize each word
join the words back together
return the new string
=end

def word_cap(string)
  new = string.downcase.split(' ')
  new = new.map do |word|
    word[0].upcase + word[1..-1]
  end
  new.join(' ')
end

str = 'hEllO wORLD'
p word_cap(str)
p str
puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'