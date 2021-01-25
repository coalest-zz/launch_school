# def print_in_box(text)
#   horizontal_line = "+#{'-' * (text.length + 2)}+"
#   empty_line = "|#{' ' * (text.length + 2)}|"

#   puts horizontal_line
#   puts empty_line
#   puts "| #{text} |"
#   puts empty_line
#   puts horizontal_line
# end

TERMINAL_SIZE = 80

def print_in_box(message)
  max_message_size = TERMINAL_SIZE - 4
  width = message.size >= max_message_size ? max_message_size : message.size

  horizontal_rule = "+#{'-' * (width + 2)}+"
  empty_line = "|#{' ' * (width + 2)}|"

  puts horizontal_rule
  puts empty_line

  num_lines = (message.size / TERMINAL_SIZE) + 1
  num_lines.times do 
    text = message.slice!(0..(TERMINAL_SIZE-5))
    puts "| #{text.ljust(width, ' ')} |"
  end

  puts empty_line
  puts horizontal_rule
end


# Expected output:
print_in_box("Nobody in the world, nobody in history, has ever gotten"\
  " their freedom by appealing to the moral sense of the people who "\
  "were oppressing them.")
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

#Further exploration:

