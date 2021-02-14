def greetings(name_arr, career_hsh)
  "Hello there #{name_arr.join(' ')}!" \
  "The revolution desperately needed a #{career_hsh[:title]}!" \
  " #{career_hsh[:occupation]}!"
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
