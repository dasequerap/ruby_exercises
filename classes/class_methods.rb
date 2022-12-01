# frozen_string_literal: true

# Class methods example
# Superclass and ancestors example
p 5.class.superclass
p 5.class.ancestors
puts

# Methods example
p 5.methods
puts 5.methods

# Gets common methods between objects
puts 5.methods.sort&3.14.methods.sort
puts

# Gets methods present in one object that are not present in another
puts 5.methods.sort - 3.14.methods.sort
puts
puts 3.14.methods.sort - 5.methods.sort
puts

# Determine if an instance is an specific type:
p 3.14.is_a?(Float)
p 3.14.is_a?(Numeric)
p 3.14.is_a?(String)
puts

# Respond to
p 3.14.respond_to?(:class)
p 3.14.respond_to?(:methods)
p 3.14.respond_to?(:is_a?)
p 3.14.respond_to?(:respond_to?)
p 3.14.respond_to?(:size)
puts

# Get object ids
p 3.14.object_id
p 3.15.object_id

#