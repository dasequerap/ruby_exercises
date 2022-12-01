# frozen_string_literal: true

weather = 'sunny'
number = 15

if weather.downcase == 'raining'
  puts 'I should stay home'
else
  puts "I'm going for a walk"
end

if number.odd?
  puts "#{number} is odd"
else
  puts "#{number} is even"
end

# Unless example
password = 'password'

unless password.include?('a')
  puts 'Access denied'
end

# Ternary operator
puts number.odd? ? "It's odd" : "It's even"
result = number.odd? ? "It's odd" : "It's even"
puts result

def odd_or_even?(number)
  number.odd? ? "#{number} is odd" : "#{number} is even"
end

puts odd_or_even?(5)
puts odd_or_even?(6)

# Negate
true_var = true
puts !true_var
puts !nil

if !true_var
  puts true_var
else
  puts !true_var
end
