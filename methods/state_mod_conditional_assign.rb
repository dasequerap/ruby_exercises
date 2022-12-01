# Statetment modfiers
number = 5000
x = 8

puts "#{number} is a Huge number!" if number > 75
puts "#{x} is not greater than 10" unless x > 10

# Conditional assignment
greeting = 'hello'
index = 100
letter = greeting[index]
letter ||= 'Not found'
p letter
