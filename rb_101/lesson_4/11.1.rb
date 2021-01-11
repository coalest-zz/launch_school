flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# make a new hash
# set the first key to the first vlaue of flinstones 
# and the value to the array position
# do it for reach of the rest

# Method 1:
hsh = {}

flintstones.each_with_index do |name, index|
  hsh[name] = index
end

# hsh = {}
# counter = 0

# for name in flintstones
#   hsh[name] = counter
#   counter += 1
# end

p hsh
