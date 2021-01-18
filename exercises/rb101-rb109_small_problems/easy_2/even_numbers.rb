# Four different ways:
(1..99).each {|i| puts i if i.even?}

puts Array.new(49) {|i| (i+1)*2 }

arr = Array.new(99) {|i| i+1 }
arr.select {|num| puts num if num.even? }

1.upto(99) { |num| puts num if num.even? }