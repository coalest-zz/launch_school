a = [1, 2, 3]

def no_mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p no_mutate(a)
p "After mutate methodL #{a}"
