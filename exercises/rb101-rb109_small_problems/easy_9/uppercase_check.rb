def uppercase?(string)
  new_str = string.gsub(/[^a-z]/, '')
  new_str.chars.each do |char|
    ('A'..'Z').include?(char) ? next : (return false)
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# LS Solution:
def uppercase?(string)
  string == string.upcase
end

# lol