def oddities(array)
  only_odds = []
  array.each_index do |i|
    only_odds << array[i] if i.even?
  end
  only_odds
end

def oddities(array)
  array.select.each_with_index { |_, i| array[i] if i.even? }
end

def oddities(array)
  only_odds = []
  0.upto(array.length - 1) { |i| only_odds << array[i] if i.even? }
  only_odds
end

p oddities([2,3,4,5,6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []