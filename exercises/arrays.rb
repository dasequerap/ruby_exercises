# Floating point array
floating_numbers = [1.24, 5.35, 17.6, 12.59, 22.45, 2.7, 78.95, 17.81, 64.29, 71.3, 23.65, 1.23, 7.43, 45.29, 99.1, 56.23, 43.01, 67.03, 45.23, 1.73]

class Array
  def initialize(array)
    @array = array
  end

  def sum_items
    @array.sum
  end

  def average
    @array.sum / @array.size
  end

  def max_number
    @array.max
  end

  def min_number
    @array.min
  end
end

my_array = Array.new(floating_numbers)
puts my_array.sum_items
puts my_array.average
puts my_array.max_number
puts my_array.min_number
puts '-------------------------------------'

# Customer class
class Customer
  attr_reader :id, name
  attr_accessor :address

  def initialize(id, name, address = nil)
    @id = id
    @name = name
    @address = address
  end

  def name
    puts @name
  end

  def address
    puts @address
  end
end

customer_one = Customer.new(1, 'Larry Page', '234 Evergreen Street')
customer_one.name
customer_one.address
customer_two = Customer.new(2, 'Ana Hayes', '45 Doral PA')

puts '-------------------------------------'

customer_two.name
customer_two.address
