# Print 'Hello World!' 10 times

for i in 1..10
  puts "#{i} Hello World"
end

puts '----------------------------------------------------------'

# Print each element of the array
city_array = ['New York', 'San Francisco', 'Dallas', 'Los Angeles', 'Seattle']
city_array.each { |element| puts "#{element}" }

# While loop under 50
loop_number = 0

while loop_number <= 50
  loop_number += 1
end

puts '----------------------------------------------------------'

# Ultil loop under 100
until_number = 0

until until_number > 100
  until_number += 1
end
