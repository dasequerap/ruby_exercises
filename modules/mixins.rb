# frozen_string_literal: true

# Mixins examples
class OlympicMedal
  include Comparable

  MEDAL_VALUES = { 'GOLD' => 3, 'SILVER' => 2, 'BRONZE' => 1 }.freeze
  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new('BRONZE', 3)
silver = OlympicMedal.new('SILVER', 5)
gold = OlympicMedal.new('GOLD', 10)

p bronze > silver
p bronze < silver
p gold >= silver
p gold <= bronze
p bronze != silver
p silver == gold
p bronze == bronze
p silver.between?(bronze, gold)
puts
