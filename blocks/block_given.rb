# Block_given? example

def pass_on_control_condition
  puts 'inside the method'
  yield if block_given?
  puts 'back inside the method'
end

pass_on_control_condition
puts
pass_on_control_condition do
  puts "Hello, I'm in the block"
  puts 'I will exit the yield block'
end
