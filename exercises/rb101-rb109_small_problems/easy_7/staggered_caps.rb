# def staggered_case(string)
#   staggered = string.downcase.chars
#   staggered.each_with_index do |char, i|
#     char.upcase! if i % 2 == 0
#   end
#   staggered.join
# end

# LS Solution:
def staggered_case(string, start_on_0 = true)
  result = ''
  need_upper = start_on_0
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!', false) #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false)# == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', false) #== 'IgNoRe 77 ThE 444 NuMbErS'