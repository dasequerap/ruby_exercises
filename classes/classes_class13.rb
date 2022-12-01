# frozen_string_literal: true

# Classes lesson
class Dog
  def initialize(name)
    @name = name
  end

  def get_name
    puts "My name is #{@name}"
  end

  def bark
    puts "I'm barking!"
  end

  def eat
    puts "I'm eating!"
  end

  def sleep
    puts "I'm sleeping!"
  end

  def play
    puts "I'm playing!"
  end
end

corgi = Dog.new('Jack')
corgi.get_name
corgi.bark
corgi.eat
corgi.sleep
corgi.play
p corgi.class
p corgi.methods
