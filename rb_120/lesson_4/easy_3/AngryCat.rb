class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

puss = AngryCat.new(9, 'Puss')
ryszka = AngryCat.new(3, 'Ryszka')
p puss
p puss.to_s