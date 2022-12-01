# Gets and chomp method
puts "Hi, what's your name?"
name = gets.chomp

puts "Thank you for your input, #{name}. Welcome!"
puts "What's your age?"
age = gets.chomp.to_i

puts "Your age is #{age}. Thank you!"
