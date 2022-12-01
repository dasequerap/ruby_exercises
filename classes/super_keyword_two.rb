# frozen_string_literal: true

# Super keyword second example
class Automobile
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    'Vroom!, vroom!'
  end

  def distance(speed, hours)
    speed * hours
  end
end

# Class Firetruck Car
class Firetruck < Automobile
  attr_reader :sirens

  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    "#{super()}. I'm driving at #{speed} km per hour"
  end

  def distance(speed, hours)
    "I've driven #{super(speed, hours)} kilometers at #{speed} km per hour during #{hours} hours in an #{maker}."
  end
end

firetruck = Firetruck.new('Oldsmobile', 4)
p firetruck.maker
p firetruck.drive(50)
p firetruck.distance(50, 4)
