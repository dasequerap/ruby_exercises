# Polymorphism example

class Vehicle 
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def start
    puts "Vehicle starting"
  end

  def stop
    puts "Vehicle stopping"
  end
end

class SUV < Vehicle
  def start
    puts "SUV vehicle #{@make}, #{@model}, #{@year} starting"
  end

  def stop
    puts "SUV vehicle #{@make}, #{@model}, #{@year} stopping"
  end
end

class Semi < Vehicle
  def start
    puts "Semi vehicle #{@make}, #{@model}, #{@year} starting"
  end

  def stop
    puts "Semi vehicle #{@make}, #{@model}, #{@year} stopping"
  end
end

class MotorBike < Vehicle
  def start
    puts "MotorBike vehicle #{@make}, #{@model}, #{@year} starting"
  end

  def stop
    puts "MotorBike vehicle #{@make}, #{@model}, #{@year} stopping"
  end
end

# Objects
my_vehicle = Vehicle.new("Honda", "Accord", 2014)
my_vehicle.start
my_vehicle.stop
puts '-----------------'

my_suv = SUV.new("Chevrolet", "Tahoe", 2019)
my_suv.start
my_suv.stop
puts '-----------------'

my_semi = Semi.new("Toyota", "RAV", 2017)
my_semi.start
my_semi.stop
puts '-----------------'

my_bike = MotorBike.new("Suzuki", "GSX", 2004)
my_bike.start
my_bike.stop
