# frozen_string_literal: true

my_hash = {
  'John' => 2.3,
  'Maria' => 3.3,
  0 => 2.5
}
second_hash = Hash.new
p second_hash.class
puts

puts my_hash['John']
puts my_hash['Maria']
p my_hash['Randy']
puts
puts my_hash[0]
puts my_hash.key(2.3)
puts my_hash.key(0)
print "#{my_hash.keys}\n"
print "#{my_hash.values}\n"
puts

second_hash['Mark'] = 1
second_hash['Randy'] = 2
print "#{second_hash}\n"

for key in my_hash.keys
 puts "#{key} - #{my_hash[key]}"
end

my_hash.each { |element| puts "#{element}" }
puts

my_hash.each { |key, value| puts "#{key} - #{value}" }
puts

# Symbols
p :name
p :name.methods
puts

# Symbols and hashes
hash_old_style = { :name => 'Carl'} # Old style symbol declaration
person = {
  name: 'Joe',
  age: 23,
  languages: %w[Java Python Ruby]
}

p hash_old_style[:name]
p person[:name]
p person[:age]
p person[:languages]
p :name.class
p :name.to_s.class
p 'age'.to_sym
p 'age'.to_sym.class
p 'School bus'.to_sym # avoid use spaces for symbols
puts

# Fetch hashes
menu = {
  burger: 2.5,
  tacos: 2.2,
  chips: 0.5
}

p menu.fetch(:burger)
p menu.fetch(:salad, 'Salad not found')
p menu.fetch('salad'.to_sym, "'#{'salad'}' not found")
puts

# Store
menu[:sandwich] = 2.99
p menu[:sandwich]

menu[:burger] = 3.99
p menu[:burger]

menu.store(:salad, 0.99)
menu.store(:burger, 0.99)
p menu
puts

# Length and empty
shopping_list = {
  bananas: 10,
  oranges: 5,
  tomatoes: 4
}
another_shopping_list = {}

p shopping_list.size
p shopping_list.length
p shopping_list.empty?
p another_shopping_list.empty?

# Iterating over hash' symbols
shopping_list.each { |product, quantity| puts "We need to buy #{quantity} #{product.capitalize}" }
puts{}
shopping_list.each { |pair| puts "We need to buy #{pair[1]} #{pair[0]}" }
puts

# each_key and each_value
salaries = {
  ceo: 100_000,
  director: 80_000,
  producer: 70_000,
  local_director: 70_000
}

salaries.each_key { |position| puts position }
puts
salaries.each_value { |salary| puts salary }
puts
p salaries.keys.uniq
p salaries.values.uniq
