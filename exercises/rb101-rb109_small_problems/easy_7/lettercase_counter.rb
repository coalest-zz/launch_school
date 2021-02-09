=begin
input: string
output: hash with three entries
explicit: each key is lowercuase, uppercase, and neither
implicit: empty string returns 0 for each value
algo:
create a hash with three keys lower, upper, neither
iteratre through the string incrementing the value depending on what char it is
return the hash at the end
=end

LOWERS = ('a'..'z').to_a
UPPERS = ('A'..'Z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if LOWERS.include?(char)
      counts[:lowercase] += 1
    elsif UPPERS.include?(char)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }