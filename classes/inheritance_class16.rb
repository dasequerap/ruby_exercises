# frozen_string_literal: true

# Inheritance example
class Animal
  def breathe
    puts 'Inhale and exhale'
  end
end

# New dog
class Dog < Animal
  def bark
    puts 'Barking!'
  end
end

my_dog = Dog.new
my_dog.breathe
my_dog.bark
puts my_dog.class

# Box example
class Box
  def initialize(width, height)
    @width = width
    @height = height
  end

  def display_name
    puts "I'm a box class!"
  end
end

# Small box
class SmallBox < Box
  def print_area
    @area = @width * @height
    puts "Area of the small box is #{@area}"
  end

  def display_price
    puts 'Price of the small box is $1200'
  end
end

# Big box
class BigBox < Box
  def initialize(width, height, volume)
    @volume = volume
    super(width, height)
    @area = @width * @height * @volume
  end

  def print_area
    puts "Area of the big box is #{@area}"
  end
end

box_simple = Box.new(12, 5)
box_simple.display_name

small_box = SmallBox.new(2, 5)
small_box.print_area
small_box.display_price
small_box.display_name

big_box = BigBox.new(12, 15, 8)
big_box.print_area
big_box.display_name
puts

# Get superclasses and ancestors of an object
p small_box.class.superclass
p big_box.class.superclass
p box_simple.class.subclasses
p big_box.class.ancestors
p small_box.class.ancestors
puts

# Determine if an object is an specific type with is_a?
p box_simple.is_a?(Box)
p big_box.is_a?(BigBox)
p big_box.is_a?(Box)
p small_box.is_a?(SmallBox)
p small_box.is_a?(Dog)
puts

# Determine if an object is an instance of an specific type with instance_of?
p small_box.instance_of?(Dog)
p box_simple.instance_of?(Box)
p big_box.instance_of?(BigBox)
p big_box.instance_of?(Box)
p small_box.instance_of?(SmallBox)
puts

# Determine if an object has or responds to specific methods with responds_to?
p box_simple.respond_to?(:print_area)
p box_simple.respond_to?(:display_price)
p box_simple.respond_to?(:display_name)
p big_box.respond_to?(:print_area)
p big_box.respond_to?(:display_name)
p small_box.respond_to?(:print_area)
p small_box.respond_to?(:display_name)
puts

# Compare if class A inherits from a class B
p SmallBox < Box
p BigBox < Box
p SmallBox > Box
p BigBox > Box
