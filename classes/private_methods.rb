# frozen_string_literal: true

# Private methods
class GadgetSix
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = generate_production_number
  end

  private

  def generate_production_number
    start_digits = rand(10_000..99_999)
    end_digits = rand(10_000..99_999)
    alphabet = ('A'..'Z').to_a
    middle_digits = Time.now.year.to_s
    5.times {  middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end
end

phone = GadgetSix.new
p phone.production_number
