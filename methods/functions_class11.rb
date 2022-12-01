# names = ['Sam', 'Brenda', 'Dan', 'Sam', 'Mike', 'John', 'Julia']
names = %w[Sam Brenda Dan Sam Mike John Julia]

# Add method
def add(number_one, number_two)
  number_one + number_two
end

puts add(1, 30)
puts add(-5, -34)

# Greet method
def greet(name)
  puts "Hello #{name}, welcome to my house!"
end

greet('Martha')
greet('Anthony')
greet('Maria')
greet('Dan')

names.each { |name| greet(name) }

puts "#{greet('Ana')} Thank you!"
p greet('Carlos')

# Lucky number
def lucky_number(number)
  if Random.rand(2) == number
    puts "You are a winner!. Your number is #{number}"
  else
    puts "#{number}. Try again"
  end
end

lucky_number(77)

# Implicit return
def implicit_return
  'Hello'
end

hello = implicit_return
puts hello
p implicit_return
