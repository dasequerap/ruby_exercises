# frozen_string_literal: true

# Proc example
cubes = proc { |number| number**3 }
squares = proc { |number| number**2 }
a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_squares, b_squares, c_squares = [a, b, c].map { |array|  array.map(&squares) }

a_cubes = a.map(&cubes)
b_cubes = b.map(&cubes)
c_cubes = c.map(&cubes)

p a_squares
p b_squares
p c_squares
puts

p a_cubes
p b_cubes
p c_cubes
puts

# Multiple proc
money = [10, 20.5, 30.33, 40.7, 50]

to_pesos = proc { |currency| (currency * 20.5).round(2) }
to_euros = proc { |currency| (currency * 0.99).round(2) }
to_yens = proc { |currency| (currency * 2.4).round(2) }

p money.map(&to_pesos)
p money.map(&to_euros)
p money.map(&to_yens)
puts

# Multiline proc
ages = [5, 25, 46, 80, 60, 55]
is_old = proc do |age|
  age < 55
end

p ages.select(&is_old)
p ages.reject(&is_old)
puts

# Passing a proc to a yielded method
def yield_proc
  puts 'Inside the yielded function'
  yield
end

yielded_proc = proc { puts 'Inside the proc' }
yield_proc(&yielded_proc)
puts

# Passing a proc to a block function (loop) and calling a proc
looped_proc = proc { puts 'Hi there' }
5.times(&looped_proc)
puts
looped_proc.call
puts
puts to_pesos.call(2.3)
puts

# Calling functions with map
p [5, 3, 6].map(&:to_f)
puts
# Passing a method as proc
p [1, 2, 3, 4, 5].select { |number| number.even? }
p [1, 2, 3, 4, 5].select(&:even?)
p [1, 2, 3, 4, 5].select { |number| number.odd? }
p [1, 2, 3, 4, 5].select(&:odd?)
puts

# Methods with proc arguments
def show_login_message(user_name, &message)
  puts "Logging in progress for user '#{user_name}'"
  message.call(user_name)
end

valid = proc do |name|
  puts "Log-in successful for user '#{name}'"
  puts 'Welcome!'
end

invalid = proc do |name|
  puts "Log-in failed for user '#{name}'"
  puts 'Please, check your credentials'
end

show_login_message('carl', &valid)
puts
show_login_message('johnny', &invalid)
puts
