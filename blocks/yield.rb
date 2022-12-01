# frozen_string_literal: true

# Yield
def pass_control
  puts 'This is an statement inside the function'
  yield
  puts 'This is the last statement inside the function'
end

def pass_variable
  name = yield
  puts "Welcome, #{name}!"
end

def multiple_pass
  puts 'Inside the method'
  puts yield
  puts 'Inside again'
  yield
end

pass_control { puts 'This is an statement inserted in pass control method' }
puts
pass_control { puts 'This is another statement inserted in pass control method' }
puts

pass_control do
  puts 'First statement added'
  puts 'Second_statement added'
end
puts

# Yield variables
pass_variable { 'diego'.capitalize }
p multiple_pass { puts 'Invoking outside the method' }
puts
returned_yield = multiple_pass { 'implicit return' }
puts returned_yield
puts

# Yield with arguments
def say_hello(name)
  yield name
end

say_hello('Carlos') { |name| puts "Hello #{name}" }

def number_evaluation(number_one, number_two, number_three)
  puts 'Evaluating numbers:'
  yield number_one, number_two, number_three
end

result = number_evaluation(1, 15, 13) { |num1, num2, num3| num1 * num2 * num3 }
p result
result = number_evaluation(1, 15, 13) { |num1, num2, num3| num1 + num2 + num3 }
p result
puts
