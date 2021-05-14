=begin
-----------------------INSTRUCTIONS--------------------------------------
Make a madlibs program that reads in some text from a text file that you
have created, and then plugs in a selection of randomized nouns, verbs,
adjectives, and adverbs into that text and prints it. You can build your
lists of nouns, verbs, adjectives, and adverbs directly into your
program, but the text data should come from a file or other external
source. Your program should read this text, and for each line, it should
place random words of the appropriate types into the text, and print the
result.

--------------------------PROBLEM----------------------------------------

Input: text from a file

Output: printed the inputted text but with random words in the text

---------------------------RULES-----------------------------------------
Explicit: input text must be in a file

Implicit: 

--------------------------EXAMPLES---------------------------------------

----------------------------ALGO----------------------------------------

iterate through the words in the text
When you come to '#{adjective}' in the text
  substitute '#{adjective}' with a randomly selected adjective
Do the same for nouns, verbs, and adverbs
output the text with substitutions

=end

require 'pry'

# def place(word)
#   case
#   when word.include?('adjective')
#     word.sub('#{adjective}', '')
#   when word.include?('noun')
#     #
#   when word.include?('verb')
#     #
#   when word.include?('adverb')
#   end
# end

def madlibs(text, replacement_words)
  loop do
    break unless text.match(/%\{.*\}/)
    replacement_words.keys.each do |key|
      text = text.sub("%{#{key.to_s}}", "#{replacement_words[key].shuffle.pop}")
    end
  end

  puts text
end

replacements = { adjective: %w(quick lazy sleepy ugly),
                 noun: %w(fox dog head leg ),
                 adverb: %w(easily lazily noisily excitedly),
                 verb: %w(jumps lifts bites licks) }

file = File.read('madlibs_input.txt')

madlibs(file, replacements)

p replacements