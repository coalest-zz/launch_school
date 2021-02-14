=begin

=end

require 'pry'

def fizzbuzz(first, last)
  first.upto(last) do |num|
    # binding.pry
    if num % 15 == 0
      print 'FizzBuzz'
    elsif num % 5 == 0
      print 'Buzz'
    elsif num % 3 == 0
      print 'Fizz'
    else
      print num
    end
    print ", " unless num == last
  end
  puts ''
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz