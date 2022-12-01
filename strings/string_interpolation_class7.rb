# frozen_string_literal: true

student_name = 'John Smith'
apples_number = 5
apples_cost = 6.99

puts "#{student_name} has #{apples_number} apples. They costed him $#{apples_cost}."
p "#{student_name} has #{apples_number} apples. They costed him $#{apples_cost}."
puts "Apples' unit price was $#{(apples_cost / apples_number).round(2)}"
