# frozen_string_literal: true

# Struct example
module AppStore
  App = Struct.new(:name, :developer, :version)

  APPS = [
    App.new(:Chat, :facebook, 2.0),
    App.new(:Twitter, :twitter, 5.8),
    App.new(:Weather, :yahoo, 10.15)
  ].freeze

  def self.find_app_name(name)
    APPS.find { |app| app.name == name }
  end
end

# implementation in gadget class
class GadgetEight
  attr_accessor :username, :apps
  attr_reader :production_number

  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Gadget #{production_number} belongs to user #{username}"
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  def install_app(name)
    app = AppStore.find_app_name(name)
    apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name }
    apps.delete(app) unless app.nil?
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

phone = GadgetEight.new
p phone
puts

phone.install_app(:Twitter)
phone.install_app(:Chat)
p phone.apps
phone.delete_app(:Chat)
phone.delete_app(:News)
p phone.apps
