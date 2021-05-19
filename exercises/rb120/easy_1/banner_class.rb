class Banner
  def initialize(message, width=message.length)
    @message = message
    @width = width
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-#{"-"*@width}-+"
  end

  def empty_line
    "| #{" "*@width} |"
  end

  def message_line
    if @width < @message.length
      "| #{@message[0,@width]} |"
    elsif @width > @message.length
      diff = @width - @message.length
      first_half = diff / 2
      second_half = diff - first_half
      "| #{' '*second_half}#{@message[0,@width]}#{' '*first_half} |"
    else
      "| #{@message} |"
    end
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 79)
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# banner = Banner.new('')
# puts banner
# +--+
# |  |
# |  |
# |  |
# +--+