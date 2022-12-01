# frozen_string_literal: true

# Files example
# Know if file exists

puts File.exist?('files/sample.txt')
puts File.exist?('files/files_class21.rb')
puts File.exist?(
  '/Users/diego.sequera/Library/CloudStorage/OneDrive-OneWorkplace/Code_Samples_Ruby/variables/variables_class14.rb'
)

# Creating a file
a_file = File.new('files/ruby.txt', 'w')
a_file.syswrite("I've mastered the basics of Ruby now!\n")
a_file.write('Now I have to practice to master Ruby better!')
a_file.close

# Reading a file
s_file = File.open('files/ruby.txt', 'r')
s_file.each { |line| puts line }
s_file.close
puts '--------------------------------------------'

# exception handling
def load_file(file_name)
  my_file = File.open(file_name, 'r')
  my_file.each { |line| puts line }
  my_file.close
rescue
  # raise("file '#{file_name}' not found")
  puts "file '#{file_name}' not found"
end

load_file('students.rb')
load_file('files/ruby.txt')

# Appending mode and adding new/existing lines
a_file = File.open('files/ruby.txt', 'a')
a_file.puts "I need to add a new line\n"
a_file.print 'and adding a new phrase!'
a_file.write 'Adding another line'
a_file.close

# Renaming and deleting a file
test_file = File.new('files/test_ruby.txt', 'w')
test_file.close
File.rename('files/test_ruby.txt', 'files/test_ruby_two.txt')
puts File.basename('files/test_ruby.txt', '.*')
File.delete('files/test_ruby_two.txt') if File.exist?('files/test_ruby_two.txt')
puts
