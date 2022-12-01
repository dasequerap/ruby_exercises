# Enumerable example
class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each { |snack| yield snack }
  end
end

mini_market = ConvenienceStore.new
mini_market.add_snack('Doritos')
mini_market.add_snack('Oreo')
mini_market.add_snack('Lays')
p mini_market.snacks
mini_market.each { |snack| puts "#{snack} is delicious" }
p mini_market.any? { |snack| snack.length >= 4 }
p mini_market.all? { |snack| snack.length >= 4 }
p mini_market.map(&:upcase)
p mini_market.select { |snack| snack.downcase.include?('o') }
p mini_market.reject { |snack| snack.upcase.include?('O') }
p mini_market.sort
p mini_market.first

