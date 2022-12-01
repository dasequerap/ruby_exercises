# frozen_string_literal: true

# Overriding to_s example
class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{('a'..'z').to_a.sample} - #{rand(1..999)}"
  end

  def to_s
    "Gadget '#{@production_number}' has the user name '#{@username}' with password '#{@password}'"
  end
end


