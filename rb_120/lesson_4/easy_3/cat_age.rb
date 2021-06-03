class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    @age = age + 1
  end
end

ryszka = Cat.new("tabby")
ryszka.make_one_year_older
puts ryszka.age