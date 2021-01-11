# Input:
statement = "The Flintstones Rock"

# Output: 
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# mkae an empty hash
# iterate through the string
# start with the first letter. Save the letter as a key and set the frequency to 1
# do the same iwth the rest. If the letter has already been seen, add 1 to the frequency counter.
# return the hash

# Method 1:
hsh = {}
arr = statement.chars
arr.select! { |element| element != ' '}
arr.each do |char|
  if !hsh.has_key?(char)
    hsh[char] = 1
  else
    hsh[char] += 1
  end
end

# Method 2:
hsh = {}
letters = ('a'..'z').to_a + ('A'..'Z').to_a
# statement.scan('o').count
letters.each do |letter|
  if statement.include?(letter)
    hsh[letter] = statement.scan(letter).count
  end
end


# iterate through letters
# if the letter is found in flintstones, add it to the hash with the keyt and value as count
#   iterate through all letts
