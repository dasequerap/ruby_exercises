# frozen_string_literal: true

# Super keyword second example
class Product
  @@product_counter = 0

  def initialize
    @@product_counter += 1
  end

  def self.counter
    @@product_counter
  end
end

class Gadget < Product
  @@widget_counter = 0

  def initialize
    super
    @@widget_counter += 1
  end

  def self.counter
    @@widget_counter
  end
end

class Device < Product
  @@device_counter = 0

  def initialize
    super
    @@device_counter += 1
  end

  def self.counter
    @@device_counter
  end
end

Gadget.new
Gadget.new

p Gadget.counter
p Product.counter
puts

Device.new
Device.new
Device.new

p Product.counter
p Gadget.counter
p Device.counter
