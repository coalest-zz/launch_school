HEX = [1,2,3,4,5,6,7,8,9,0,'a','b','c','d','e','f']
require 'pry'

# My Solution:
def uuid_generator
  uuid = []
  32.times do |num|
    uuid.push('-') if [8,12,16,20].include?(num)
    uuid << HEX.sample
  end
  uuid.join
end
p uuid_generator

# LS Solution:
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end