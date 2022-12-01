# Lambda functions
hello_lambda = lambda { |name, surname| puts "Hello #{name} #{surname}!" }
hello_lambda = ->(name, surname) { puts "Hello #{name} #{surname}!" } # Usual lambda declaration

hello_lambda.call('Karl', 'Hogan')
puts
# Following will fail:
#   hello_lambda.call
#   hello_lambda.call('Gene')

# Lambda vs proc in function
def diet_lambda
  gave_in = -> { return 'You have in' }
  gave_in.call
  'You have completed successfully the diet!'
end

def diet_proc
  gave_in = proc { return 'You have in' }
  gave_in.call
  'You have completed successfully the diet!'
end

p diet_lambda
p diet_proc
puts

# refactor into lambda
# Before
def convert_to_euros(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end

def convert_to_pesos(dollars)
  dollars * 20.45 if dollars.is_a?(Numeric)
end

def convert_to_pounds(dollars)
  dollars * 0.75 if dollars.is_a?(Numeric)
end

p convert_to_euros(20)
p convert_to_pesos(20)
p convert_to_pounds(20)
puts

# Reducing to a single method
def convert_yield(dollars, currency)
  yield dollars, currency if dollars.is_a?(Numeric)
end

p convert_yield(20, 'euros') { |dollars| dollars * 0.95 }
p convert_yield(20, 'pesos') { |dollars| dollars * 20.45 }
p convert_yield(20, 'pounds') { |dollars| dollars * 0.75 }
puts

# Adding lambda functions
to_euros = ->(dollars) { dollars * 0.95 }
to_pesos = ->(dollars) { dollars * 20.45 }
to_pounds = ->(dollars) { dollars * 0.75 }

def convert_lambda(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert_lambda(20, to_euros)
p convert_lambda(20, to_pesos)
p convert_lambda(20, to_pounds)
puts


# Calling lambda from an array
money_array = [100, 2000, 30]
p money_array.map(&to_euros)
p money_array.map(&to_pesos)
p money_array.map(&to_pounds)
puts
