# Variable types

GLOBAL_VARIABLE = 11

# Instance variables
class Customer
  def initialize(id, name, address)
    @id = id
    @name = name
    @address = address
  end

  def display_customer_details
    puts "Customer Details: \nid: #{@id} \nName: #{@name} \nAddress: #{@address} \n"
  end
end

customer_one = Customer.new(123, 'Jack Boseman', '924 Evergreen Street')
customer_one.display_customer_details

# Class Variables
class NationalCustomer
  @@id = 0

  def initialize(name, address)
    @name = name
    @address = address
    @@id += 1
  end

  def display_customer_details
    puts "Customer Details: \nid: #{@@id} \nName: #{@name} \nAddress: #{@address} \n"
  end

  def global_variable
    GLOBAL_VARIABLE
  end
end

national_customer_one = NationalCustomer.new("Jack Boseman", "924 Evergreen Street")
national_customer_one.display_customer_details
national_customer_two = NationalCustomer.new("Emily Dorsey", "123 Fake street")
national_customer_two.display_customer_details

# Global variables
puts national_customer_one.global_variable

# Local Variables
class Car
  def type
    type = 'Coupe'
    return type
  end
end

car = Car.new
puts car.type

# Constants
PI = 3.1416

class Algebra
  RADIUS = 3.1418
  def radius
    puts RADIUS
  end
end

radius = Algebra.new
radius.radius
puts GLOBAL_VARIABLE
