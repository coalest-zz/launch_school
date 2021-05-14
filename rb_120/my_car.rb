module Haulable
  def load
    "I can haul stuff."
  end
end

class Vehicle
  attr_accessor :color, :year, :model

  @@num_vehicles = 0
  @@gas_mileage = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@num_vehicles += 1
  end

  def self.get_num_vehicles
    @@num_vehicles
  end

  def speed_up(number)
    @speed += number
  end

  def brake(number)
    @speed -= number
  end

  def speed
    puts "Your current speed is #{@speed}."
  end

  def shut_down
    @speed = 0
  end

  def spray_paint(c)
    puts "Your old car color was #{color}."
    self.color = c
    puts "But now that you've painted it, it's #{color}!"
  end

  def self.get_gas_mileage(miles, gallons)
    @@gas_mileage = (miles.to_f / gallons).round(2)
  end

  def to_s
    "My car is a #{self.year} #{self.color} #{self.model}!"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyTruck < Vehicle
  include Haulable
  TYPE = 'Truck'
  def get_type
    p TYPE
  end
end

class MyCar < Vehicle
  TYPE = 'Car'
  def get_type
    p TYPE
  end
end


p fiat = MyCar.new(1995, 'Red', '500')
fiat.speed_up(20)
fiat.speed
fiat.speed_up(20)
fiat.speed
fiat.brake(20)
fiat.speed
fiat.brake(20)
fiat.speed
fiat.shut_down
fiat.speed

p MyCar.get_gas_mileage(320, 15)
fiat.get_type

f150 = MyTruck.new('a', 'b', 'c')

p fiat.age

p Vehicle.get_num_vehicles

# puts MyCar.ancestors
# puts ""
# puts MyTruck.ancestors
# puts ""
# puts Vehicle.ancestors

puts fiat
puts fiat