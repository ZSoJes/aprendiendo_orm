class Vehicle
attr_reader :number_of_wheels, :color, :has_motor, :tank_size, :refuel, :number_of_gears, :age
  def initialize
    @age = 0
  end

  def what_am_i?
    return self.class
  end

  def age!
  @age += 1 if @age == 0
  end
end

class Motorized < Vehicle
end

class Motorbike < Vehicle
end

class Car < Vehicle
end

class Bicycle < Vehicle
attr_reader :age
  def initialize(age)
    @age = age
  end
end

class Skateboard < Vehicle
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{(vehicle.age)} "
  puts "\n\n"
end
