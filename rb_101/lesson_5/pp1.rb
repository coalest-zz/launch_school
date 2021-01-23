# Practice problem 1
arr = ['10', '11', '9', '7', '8']

# order by descending value
arr.sort_by do |str|
  -str.to_i
end

#Solution:
arr.sort do |a,b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]