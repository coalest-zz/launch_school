def multiply(numbers, factor)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= factor
    multiplied_numbers << current_number

    counter += 1
  end

  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 4)  # => [2, 4, 6, 14, 2, 6]

# not mutated
p my_numbers                      # => [1, 4, 3, 7, 2, 6]