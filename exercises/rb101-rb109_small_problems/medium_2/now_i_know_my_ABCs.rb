=begin
iterate through the word
  iterate through each array
    check to see if the first letter is in any of the arrays
      if it is, delete that array or make it nil
      if it isnt, keep going
  return true at the end
=end

# BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
#           ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
#           ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

# def block_word?(word)
#   blocks = BLOCKS.dup
#   chars = word.upcase.chars
#   chars.each do |char|
#     if blocks.flatten.include?(char)
#       blocks.each do |block|
#         if block.include?(char)
#           blocks.delete(block)
#         end
#         a = 5
#       end
#     else
#       return false
#     end
#   end
#   true
# end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  upcased = word.upcase
  BLOCKS.none? { |block| upcased.count(block) == 2 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true