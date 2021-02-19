=begin
check to see if the triang is valid
  if three sides = 180 and each angle is > 0
    keep going
  else
    return invalid

3 parameters (3 angles)
if one angle is 90
  right
if any of them is greater than 90 
  obtuse
else
  acute
=end

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  return :invalid if (angles.sum != 180) || angles.include?(0)

  if angles.include?(90)
    :right
  elsif angles.any? { |ang| ang > 90}
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid