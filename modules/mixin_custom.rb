# frozen_string_literal: true

# Example custom mixin
module Purchaseable
  def purchase(item)
    puts "'#{item}' has been purchased!"
  end
end

class Bookstore
  prepend Purchaseable

  def purchase(item)
    puts "You have purchased a copy of the '#{item}' book."
  end
end

class Supermarket
  include Purchaseable

  def purchase(item)
    super
    puts 'Thanks for visiting the supermarket!'
  end
end

class Minimarket < Supermarket
end

barnes_and_noble = Bookstore.new
barnes_and_noble.purchase('The lord of the rings')
p Bookstore.ancestors
puts

costco = Supermarket.new
costco.purchase('Apple')
p Supermarket.ancestors
puts

quickstop = Minimarket.new
quickstop.purchase('Burger')
p Minimarket.ancestors
