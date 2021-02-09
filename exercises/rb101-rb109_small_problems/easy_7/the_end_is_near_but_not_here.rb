def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# Further exploration:
# Edge cases:
# What happens if there is an even number of words?
# What happens with one word?
# What happens with an empty string or one with no words?
# What happens if hte 'middle word' is a number or something?

def middle(string)
  mid_index = string.split.size.to_f / 2
  p mid_index
  if mid_index % 2 == 0
    ''
  else 
    mid_index = mid_index.round
    string.split[mid_index - 1]
  end
end

p middle('Launch School is the best!')
p middle('')