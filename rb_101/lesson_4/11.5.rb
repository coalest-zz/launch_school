flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Method 1:
flintstones.each_with_index do |name, index|
  index if name.start_with?('Be')
end
    

# Method 2:
flintstones.index { |element| element.start_with?('Be')}

# Solution:
flintstones.index { |name| name[0, 2] == 'Be'}
