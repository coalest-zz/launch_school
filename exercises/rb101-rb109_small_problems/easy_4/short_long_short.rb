def short_long_short(str1, str2)
  if str1 < str2
    "#{str1}#{str2}#{str1}"
  else
    "#{str2}#{str1}#{str2}"
  end
end

def short_long_short(str1, str2)
  str1.length < str2.length ? str1 + str2 + str1 : str2 + str1 + str2
end

# Expected output: (Three trues)
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# Solution:
# def short_long_short(string1, string2)
#   if string1.length > string2.length
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end
# end