# frozen_string_literal: true

# Getters and setter
class GadgetThree
  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{('a'..'z').to_a.sample} - #{rand(1..999)}"
  end

  # Getter for username
  def username
    @username
  end

  def username=(new_username)
    @username = new_username
  end

  def password=(new_password)
    @password = new_password
  end
end

gadget = Gadget_three.new
p gadget.username
gadget.username = ('User 123')
p gadget.username
p gadget.password = ('New password')
p gadget
