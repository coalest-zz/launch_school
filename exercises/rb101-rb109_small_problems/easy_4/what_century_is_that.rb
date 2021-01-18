def century(num)
  century = num % 100 == 0 ? (num / 100) : (num / 100) + 1 
  century.to_s + ending(century)
end

def ending(num)
  case num % 100
  when  11, 12, 13
    return 'th'
  end

  case num % 10
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
  
end

# Expected output (all trues):
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'