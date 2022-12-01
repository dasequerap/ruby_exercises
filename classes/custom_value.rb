# frozen_string_literal: true

# Accessor methods
class GadgetFive
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username = "User #{rand(1..100)}", password = 'topsecret')
    @username = username
    @password = password
    @production_number = "#{('a'..'z').to_a.sample} - #{rand(1..999)}"
  end
end

gadget = GadgetFive.new
gadget_two = GadgetFive.new('User 123', 'my_password')
p gadget
p gadget_two
p gadget.username
p gadget_two.username
gadget.username = ('User 124')
p gadget.username
p gadget.production_number
gadget.password = ('New password')
p gadget

