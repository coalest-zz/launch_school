# Four different ways:
(1..99).each { |num| puts num if num.odd?}

puts Array.new(50) { |i| (i*2)+1 }

1.upto(99) {|i| puts i if i.odd?}

arr = Array.new(100) {|i| i+1 }
puts arr.select { |i| i.odd?}