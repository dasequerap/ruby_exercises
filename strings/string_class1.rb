name = 'John Doe'
city = 'New york'
address = String.new('742 Evergreen Street')

# Multiline string
long_string = <<MLS
  --------------------------------
    This is a very long string.
    It contains new lines and
    complete paragraphs
  --------------------------------
MLS

puts name
puts name.class

puts city
puts address
puts
puts long_string
p long_string
puts

# Special characters
puts "Juliet said \"Goodbye\" to Romeo"
puts "Juliet said \'Goodbye\' to Romeo"
puts "This is a paragraph with a \nnew line"
puts "\tThis is a paragraph with a tab"
