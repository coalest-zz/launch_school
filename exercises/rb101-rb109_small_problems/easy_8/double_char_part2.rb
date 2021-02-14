LETTERS = ('a'..'z').to_a

VOWELS = %w(a e i o u)

CONSONANTS = LETTERS - VOWELS

def double_consonants(string)
  result = ''
  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      result << char * 2
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""