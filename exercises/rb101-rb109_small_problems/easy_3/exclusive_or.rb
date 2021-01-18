def xor?(bool1, bool2)
  (bool1 == true && bool2 == false) || (bool1 == false && bool2 == true)
end

# Tests:
puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

# Solution:
# def xor?(value1, value2)
#   !!((value1 && !value2) || (value2 && !value1))
# end

# Further exploration:
# checksum and raid5 storage use XOR. 
# checksum to make sure that a file hasn't been tampered with.
# storage to minimize storage space required.