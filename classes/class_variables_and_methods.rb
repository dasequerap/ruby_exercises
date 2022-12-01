# frozen_string_literal: true

# Class variables and methods example
class Bicycle
  @@maker = 'Trek'
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.description
    puts 'this is a blueprint'
  end

  def self.count
    @@count
  end

  def self.maker
    @@maker
  end
end

p Bicycle.description
p Bicycle.count
p Bicycle.maker

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

p Bicycle.count
