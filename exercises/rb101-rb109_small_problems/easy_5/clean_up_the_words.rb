#Ugly solutions:
def cleanup(string)
  cleaned = []
  with_spaces = string.gsub(/[^a-z]/, ' ').chars
  with_spaces.each_with_index do |char, i|
    cleaned << char unless (char == ' ') && (with_spaces[i+1] == ' ')
  end
  cleaned.join
end

def cleanup(string)
  cleaned = []
  string.chars.each do |char|
    if [*('a'..'z')].include?(char) 
      cleaned << char
    else
      cleaned << ' ' unless cleaned.last == ' '
    end
  end
  p cleaned.join.gsub(/\s\s+/, " ")
end

def cleanup(string)
  string.gsub(/[^a-z]/, ' ').gsub(/\s\s+/, " ")
end

puts cleanup("---what's my +*& line?") == ' what s my line '

# LS Solutions:
ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end