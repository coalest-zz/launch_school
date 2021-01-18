# def palindromic_number?(num)
#   num.to_s == num.to_s.reverse
# end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true
# p palindromic_number?(00100) == true


def palindromic_number?(num)
  sprintf("%5.5o", num) == sprintf("%5.5o", num).reverse
end

p palindromic_number?(0100) == true
