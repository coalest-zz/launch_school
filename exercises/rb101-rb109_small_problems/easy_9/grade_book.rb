def grade_avg(num)
  if num >= 90
    'A'
  elsif num >= 80
    'B'
  elsif num >= 70
    'C'
  elsif num >= 60
    'D'
  else
    'F'
  end
end

def get_grade(num1, num2, num3)
  average = (num1+num2+num3).to_f / 3
  grade_avg(average)
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

#LS Solution: 

def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end