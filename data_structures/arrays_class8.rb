student_names = ['John', 'Carl', 'Emily', 'Henry', 'Bob']
student_ages = [13, 25, 23, 14, 25, 26]
new_student_names = Array.new

puts student_names[0]
puts student_names[4]

puts student_ages[1]
puts student_ages[3]

puts new_student_names

new_student_names[0] = 'Bob'
new_student_names[1] = 'Carl'
new_student_names[2] = 'Ana'

puts new_student_names
print "#{new_student_names} \n"
puts new_student_names.class
puts new_student_names.length
puts [].empty?
print "#{new_student_names.sort} \n"
puts new_student_names.sort
puts new_student_names.sort.reverse
print "#{Array.new(5)}\n"
