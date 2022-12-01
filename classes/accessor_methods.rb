# frozen_string_literal: true

# Accessor methods
class GadgetFour
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{('a'..'z').to_a.sample} - #{rand(1..999)}"
  end
end

gadget = Gadget_four.new
p gadget
p gadget.username
gadget.username = ('User 123')
p gadget.username
p gadget.production_number
gadget.password = ('New password')
p gadget
