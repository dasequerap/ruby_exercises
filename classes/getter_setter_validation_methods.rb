# frozen_string_literal: true

# Getter and setter validation
class GadgetSeven
  attr_accessor :username
  attr_reader :production_number

  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{production_number} belongs to user #{username}"
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  private

  def generate_production_number
    start_digits = rand(10_000..99_999)
    end_digits = rand(10_000..99_999)
    alphabet = ('A'..'Z').to_a
    middle_digits = Time.now.year.to_s
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 and new_password =~ /\d/
  end
end

phone = GadgetSeven.new
p phone.production_number
puts

phone.password = 123
p phone.password = 'test'
p phone.password = 'letters123'
p phone.to_s
