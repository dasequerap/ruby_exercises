# Conditionals with switch statements

grade = 'A'
qualification = 4.75

case grade
when 'A', 'B', 'C', 'D'
  puts "You are grade #{grade}"
else
  puts 'You have failed the class test'
end

case qualification
when 2.75...5.00
  puts "You approved the course with a #{qualification}"
else
  puts "You have failed this course. Final note: #{qualification}"
end
