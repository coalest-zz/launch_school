# Original
# def shout_out_to(name)
#   name.chars.each { |c| c.upcase! }

#   puts 'HEY ' + name
# end

# Option 1 (without mutating `name`)
# def shout_out_to(name)
#   puts 'HEY ' + name.chars.map { |c| c.upcase }.join
# end

# Option 2 (with mutating `name`)
def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'