ENGLISH_NUMS = %w(zero one two three four five six 
  seven eight nine ten eleven twelve thirteen 
  fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  array.sort_by { |element| ENGLISH_NUMS[element] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# Further exploration:
# (Using sort instead of sort_by)
def alphabetic_number_sort(array)
  sorted = []
  array.map {|i| ENGLISH_NUMS[i]}.sort.each_with_index do |word, i|
    sorted[i] = ENGLISH_NUMS.index(word)
  end
  sorted
end
