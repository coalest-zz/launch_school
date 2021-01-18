
def count_occurrences(vehicles)
  vehicle_count = {}

  vehicles.each do |vehicle|
    if vehicle_count.has_key?(vehicle)
      vehicle_count[vehicle] += 1
    else
      vehicle_count[vehicle] = 1
    end
  end

  vehicle_count.each do |k, v|
    puts "#{k} => #{v}"
  end 
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
p vehicles.uniq

count_occurrences(vehicles)

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# take the first element of the array and set it equal to key with a value 1
# take the second element
#   if it already has a key add 1 to the value
#     if it doesn't, mkae a new key with a value of 1
# stop after the last value in the array
# iterate the hash, printing the hash with each key and value on one line

# More elegant solution to the middle part of my method
# array.uniq.each do |element|
#   occurrences[element] = array.count(element)
# end

# Further exploration:
# Add vehicle = vehicle.downcase 
