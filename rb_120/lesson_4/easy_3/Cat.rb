class Cat
  attr_reader :type
  def initialize(type)
    @type = type
  end

  def display_type
    puts "I am #{type} cat"
  end
end

ryszka = Cat.new("tabby")
ryszka.display_type